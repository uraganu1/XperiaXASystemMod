.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(Lcom/sonyericsson/conversations/ui/Composer;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$popupToast:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$popupToast"    # Z

    .prologue
    .line 2963
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;->val$popupToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraftSaved(Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;)V
    .locals 1
    .param p1, "saveDraftResult"    # Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    .prologue
    .line 2966
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;->val$popupToast:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->SAVED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    if-ne v0, p1, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap28(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 2969
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2970
    invoke-static {p1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 2965
    :cond_1
    return-void
.end method
