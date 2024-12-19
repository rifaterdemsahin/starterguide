import json

# Define the checklist in JSON format
checklist = {
    "Orientation Process": [
        "Complete HR paperwork",
        "Set up work email",
        "Set up workstation",
        "Attend orientation meeting",
        "Meet with team members",
        "Review company policies",
        "Complete mandatory training",
        "Set up direct deposit",
        "Get access to necessary software",
        "Tour the office"
    ]
}

# Save the checklist to a JSON file
with open('orientation_checklist.json', 'w') as f:
    json.dump(checklist, f, indent=4)

# Function to generate a report of missing steps
def generate_report(completed_steps):
    missing_steps = [step for step in checklist["Orientation Process"] if step not in completed_steps]
    report = {
        "Completed Steps": completed_steps,
        "Missing Steps": missing_steps
    }
    return report

# Example usage: List of steps completed by the new starter
completed_steps = [
    "Complete HR paperwork",
    "Set up work email",
    "Attend orientation meeting",
    "Review company policies"
]

# Generate the report
report = generate_report(completed_steps)

# Save the report to a JSON file
with open('orientation_report.json', 'w') as f:
    json.dump(report, f, indent=4)

print("Checklist and report have been generated and saved to 'orientation_checklist.json' and 'orientation_report.json' respectively.")
