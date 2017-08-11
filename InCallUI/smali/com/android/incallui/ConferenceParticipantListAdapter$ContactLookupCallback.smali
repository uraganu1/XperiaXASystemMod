.class public Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mListAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 1
    .param p1, "listAdapter"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;->mListAdapter:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method

.method private update(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;->mListAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 151
    .local v0, "listAdapter":Lcom/android/incallui/ConferenceParticipantListAdapter;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateContactInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;->update(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 128
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;->update(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 139
    return-void
.end method
