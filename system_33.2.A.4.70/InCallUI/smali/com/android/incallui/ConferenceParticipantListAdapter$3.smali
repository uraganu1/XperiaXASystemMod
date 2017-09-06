.class Lcom/android/incallui/ConferenceParticipantListAdapter$3;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I
    .locals 3
    .param p1, "p1"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .param p2, "p2"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iget-object v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 506
    .local v0, "p1Name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 507
    const-string/jumbo v0, ""

    .line 510
    :cond_0
    invoke-virtual {p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 511
    .local v1, "p2Name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 512
    const-string/jumbo v1, ""

    .line 515
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .prologue
    .line 503
    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I

    move-result v0

    return v0
.end method
