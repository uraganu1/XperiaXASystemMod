.class Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$2;
.super Ljava/lang/Object;
.source "JmsMessageNotificationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$2;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$2;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->stopQueue()V

    .line 87
    return-void
.end method
