.class Lcom/sonyericsson/conversations/ConversationsApp$1;
.super Ljava/lang/Object;
.source "ConversationsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ConversationsApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ConversationsApp;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ConversationsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ConversationsApp;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonyericsson/conversations/ConversationsApp$1;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp$1;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ConversationsApp;->-get0(Lcom/sonyericsson/conversations/ConversationsApp;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V

    .line 130
    return-void
.end method
