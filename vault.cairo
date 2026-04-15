#[starknet::interface]
pub trait IDigitalVault<TContractState> {
    fn store_secret(ref self: TContractState, secret: felt252);
    fn get_secret(self: @TContractState, user: starknet::ContractAddress) -> felt252;
}

#[starknet::contract]
pub mod DigitalVault {
    use starknet::{ContractAddress, get_caller_address};
    use starknet::storage::{Map, StoragePointerReadAccess, StoragePointerWriteAccess, StoragePathEntry};

    #[storage]
    struct Storage {
        // Mapea la dirección de un usuario a su secreto (felt252)
        secrets: Map<ContractAddress, felt252>,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        SecretStored: SecretStored,
    }

    #[derive(Drop, starknet::Event)]
    pub struct SecretStored {
        #[key] 
        pub user: ContractAddress,
        pub secret: felt252,
    }

    #[abi(embed_v0)]
    impl DigitalVaultImpl of super::IDigitalVault<ContractState> {
        
        fn store_secret(ref self: ContractState, secret: felt252) {
            let caller = get_caller_address();
            assert(caller.is_non_zero(), 'Caller cannot be zero');

            // Escritura en Storage usando la API moderna (.entry)
            self.secrets.entry(caller).write(secret);
            self.emit(SecretStored { user: caller, secret });
        }

        fn get_secret(self: @ContractState, user: ContractAddress) -> felt252 {
            // Lectura del Storage (operación de vista, nota el '@' en self)
            self.secrets.entry(user).read()
        }
    }
}
