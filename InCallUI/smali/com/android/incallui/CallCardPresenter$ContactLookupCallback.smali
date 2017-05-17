.class public Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mCallCardPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/CallCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallCardPresenter;Z)V
    .locals 1
    .param p1, "callCardPresenter"    # Lcom/android/incallui/CallCardPresenter;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    .line 107
    iput-boolean p2, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    .line 105
    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 113
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 114
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/CallCardPresenter;->-wrap1(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 121
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->-wrap2(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 119
    :cond_0
    return-void
.end method
