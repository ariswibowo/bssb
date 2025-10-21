# --- pip install kafka-python

from kafka.admin import KafkaAdminClient
import re

# --- Configuration ---
BOOTSTRAP_SERVERS = "10.126.102.105:9092"  # your brokers
PATTERN = r"^elysian.*"  # regex pattern, e.g. all topics starting with 'elysian'

def delete_topics_by_pattern(bootstrap_servers, pattern):
    admin_client = KafkaAdminClient(bootstrap_servers=bootstrap_servers)

    # Get all existing topics
    topics = admin_client.list_topics()
    matching_topics = [t for t in topics if re.match(pattern, t)]

    if not matching_topics:
        print(f"No topics matched pattern: {pattern}")
        return

    print(f"Found {len(matching_topics)} topics to delete:")
    for t in matching_topics:
        print(f"  - {t}")

    confirm = input("\nType 'yes' to confirm deletion: ")
    if confirm.lower() != "yes":
        print("Deletion canceled.")
        return

    print("\nDeleting topics...")
    try:
        admin_client.delete_topics(matching_topics, timeout_ms=30000)
        print("✅ Topics successfully marked for deletion.")
    except Exception as e:
        print(f"❌ Error while deleting topics: {e}")
    finally:
        admin_client.close()

if __name__ == "__main__":
    delete_topics_by_pattern(BOOTSTRAP_SERVERS, PATTERN)
