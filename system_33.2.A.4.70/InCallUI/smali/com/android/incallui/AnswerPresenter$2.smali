.class Lcom/android/incallui/AnswerPresenter$2;
.super Ljava/lang/Object;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerPresenter;->startContactInfoSearchForWaitingCall(Lcom/android/incallui/Call;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;

.field final synthetic val$isActive:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerPresenter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerPresenter;
    .param p2, "val$isActive"    # Z

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$2;->this$0:Lcom/android/incallui/AnswerPresenter;

    iput-boolean p2, p0, Lcom/android/incallui/AnswerPresenter$2;->val$isActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$2;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$2;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/incallui/AnswerPresenter$2;->val$isActive:Z

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setContactNameOrNumber(Ljava/lang/String;Z)V

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 754
    :cond_2
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$2;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/incallui/AnswerPresenter$2;->val$isActive:Z

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setContactNameOrNumber(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 759
    return-void
.end method
