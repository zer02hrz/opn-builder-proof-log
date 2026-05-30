// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OPNBuilderProofLog {
    struct Milestone {
        address builder;
        string title;
        string description;
        uint256 timestamp;
    }

    Milestone[] private milestones;

    mapping(address => uint256[]) private builderMilestones;

    event MilestoneSubmitted(
        address indexed builder,
        uint256 indexed milestoneId,
        string title,
        string description,
        uint256 timestamp
    );

    function submitMilestone(
        string memory _title,
        string memory _description
    ) public {
        Milestone memory newMilestone = Milestone({
            builder: msg.sender,
            title: _title,
            description: _description,
            timestamp: block.timestamp
        });

        milestones.push(newMilestone);

        uint256 milestoneId = milestones.length - 1;
        builderMilestones[msg.sender].push(milestoneId);

        emit MilestoneSubmitted(
            msg.sender,
            milestoneId,
            _title,
            _description,
            block.timestamp
        );
    }

    function getMilestone(uint256 _milestoneId)
        public
        view
        returns (
            address builder,
            string memory title,
            string memory description,
            uint256 timestamp
        )
    {
        require(_milestoneId < milestones.length, "Milestone does not exist");

        Milestone memory milestone = milestones[_milestoneId];

        return (
            milestone.builder,
            milestone.title,
            milestone.description,
            milestone.timestamp
        );
    }

    function getMyMilestoneIds() public view returns (uint256[] memory) {
        return builderMilestones[msg.sender];
    }

    function getBuilderMilestoneIds(address _builder)
        public
        view
        returns (uint256[] memory)
    {
        return builderMilestones[_builder];
    }

    function getTotalMilestones() public view returns (uint256) {
        return milestones.length;
    }
}
