#[starknet::interface]
pub trait IMessageBoard<TContractState> {
    fn post_message(ref self: TContractState, message: ByteArray);
    fn get_message(self: @TContractState, user: starknet::ContractAddress) -> ByteArray;
}

#[starknet::contract]
pub mod MessageBoard {
    use starknet::{ContractAddress, get_caller_address};
    use starknet::storage::{Map, StoragePointerReadAccess, StoragePointerWriteAccess, StoragePathEntry};

    #[storage]
    struct Storage {
        // ByteArray es el estándar moderno para texto dinámico y largo
        messages: Map<ContractAddress, ByteArray>,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        MessagePosted: MessagePosted,
    }

    #[derive(Drop, starknet::Event)]
    pub struct MessagePosted {
        #[key] // Indexado para búsquedas rápidas en el explorador/frontend
        pub user: ContractAddress,
        pub message: ByteArray,
    }

    #[abi(embed_v0)]
    impl MessageBoardImpl of super::IMessageBoard<ContractState> {
        
        fn post_message(ref self: ContractState, message: ByteArray) {
            let caller = get_caller_address();
            assert(caller.is_non_zero(), 'Caller cannot be zero');

            // CLONE: Clonamos la variable porque el Ownership se consume al guardar en storage
            let message_for_event = message.clone();

            // Guardamos el mensaje en la blockchain
            self.messages.entry(caller).write(message);

            // Emitimos el evento usando la copia que hicimos
            self.emit(MessagePosted { user: caller, message: message_for_event });
        }

        fn get_message(self: @ContractState, user: ContractAddress) -> ByteArray {
            self.messages.entry(user).read()
        }
    }
}
