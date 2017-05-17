.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$imEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonymobile/jms/environment/ImEnvironmentApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;->val$imEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;->val$imEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-interface {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->onApplicationStartupScreenDisplayed()V

    .line 790
    return-void
.end method
