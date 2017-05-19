.class Lcom/android/incallui/ContactInfoCache$3;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ContactInfoCache;->handlePhoneNumberChanged(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$3;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 851
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$3;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->-get0(Lcom/android/incallui/ContactInfoCache;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    .line 852
    .local v0, "listener":Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;
    invoke-virtual {v0, p1}, Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;->onContactInfoUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    .end local v0    # "listener":Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 856
    return-void
.end method
