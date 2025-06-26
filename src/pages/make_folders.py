import os

features = [
    'Notes & Writing Pad',
    'Project Dashboard',
    'Smart Calendar',
    'Task & To-Do Manager',
    'Daily Journal',
    'Mind Map Canvas',
    'Idea Vault',
    'Activity Timeline',
    'Active Projects',
    'Project Archives',
    'Knowledge Base',
    'Habit Tracker',
    'Goals & Motivation',
    'Reading Tracker',
    'Digital Sketchpad',
    'App Settings'
]

# Function to convert feature names into folder-safe names
def sanitize_foldername(name):
    return ''.join(c if c.isalnum() else '_' for c in name).strip('_')

# Create folders in the current directory
for feature in features:
    folder_name = sanitize_foldername(feature)
    os.makedirs(folder_name, exist_ok=True)
    print(f"Created folder: {folder_name}")
