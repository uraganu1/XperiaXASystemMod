.class Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mIsPrimary:Z

.field private final mVideoCallPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/VideoCallPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;Z)V
    .locals 1
    .param p1, "videoCallPresenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;->mVideoCallPresenter:Ljava/lang/ref/WeakReference;

    .line 1736
    iput-boolean p2, p0, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;->mIsPrimary:Z

    .line 1734
    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1741
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;->mVideoCallPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    .line 1742
    .local v0, "presenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1743
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;->mIsPrimary:Z

    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/VideoCallPresenter;->-wrap0(Lcom/android/incallui/VideoCallPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 1740
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;->mVideoCallPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    .line 1750
    .local v0, "presenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1751
    invoke-static {v0, p1, p2}, Lcom/android/incallui/VideoCallPresenter;->-wrap1(Lcom/android/incallui/VideoCallPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1748
    :cond_0
    return-void
.end method
