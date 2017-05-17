.class Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticipantInfo"
.end annotation


# instance fields
.field private mCacheLookupComplete:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    .line 66
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    .line 67
    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 96
    instance-of v1, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 99
    .local v0, "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 98
    return v1

    .line 101
    .end local v0    # "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCacheLookupComplete()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    return v0
.end method

.method public setCacheLookupComplete(Z)V
    .locals 0
    .param p1, "cacheLookupComplete"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    .line 90
    return-void
.end method

.method public setCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    .line 74
    return-void
.end method

.method public setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 82
    return-void
.end method
