.class Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;
.super Ljava/lang/Object;
.source "SomcCallEndedInteractionPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getCallerInfoForCall(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcCallEndedInteractionPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcCallEndedInteractionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;->this$0:Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;->this$0:Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;->this$0:Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->showCallEndedInteractionFragment(ZLjava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;->this$0:Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->showCallEndedInteractionFragment(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 112
    return-void
.end method
