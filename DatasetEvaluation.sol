// Specify the Solidity version
pragma solidity ^0.8.0;

contract DatasetEvaluation {

    // Define a structure for the data
    struct Evaluation {
        uint8 quality;             // 0 to 100
        string dictionary;        // CSV data
        string category;          // ALGORITHM OR DATASET
        string url;
        string name;
        string version;
        string domain;            // Domain of application
        string reason;            // Reason for evaluation
        uint256 created_at;       // Timestamp
        string hash;              // Hash of the data
    }

    // Array to store evaluations
    Evaluation[] public evaluations;

    // Add a new evaluation
    function addEvaluation(
        uint8 _quality,
        string memory _dictionary,
        string memory _category,
        string memory _url,
        string memory _name,
        string memory _version,
        string memory _domain,
        string memory _reason,
        uint256 _created_at,
        string memory _hash
    ) public {
        Evaluation memory newEvaluation = Evaluation({
            quality: _quality,
            dictionary: _dictionary,
            category: _category,
            url: _url,
            name: _name,
            version: _version,
            domain: _domain,
            reason: _reason,
            created_at: _created_at,
            hash: _hash
        });
        
        evaluations.push(newEvaluation);
    }

    // Retrieve the count of evaluations
    function getEvaluationsCount() public view returns (uint) {
        return evaluations.length;
    }
}
