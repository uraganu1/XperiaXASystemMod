.class Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$3;
.super Ljava/lang/Object;
.source "JmsMessageNotificationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->startQueue()V
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
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$3;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$3;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-set0(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;Z)Z

    .line 112
    return-void
.end method
