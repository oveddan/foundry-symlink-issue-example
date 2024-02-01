import "forge-std/Test.sol";

contract ImportTest is Test {
    function test_can_import_file_from_node_modules() public {
        string memory jsonString = vm.readFile(
            "node_modules/@repo/imported/files/config.json"
        );
    }
}
