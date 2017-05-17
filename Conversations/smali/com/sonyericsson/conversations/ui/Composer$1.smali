.class Lcom/sonyericsson/conversations/ui/Composer$1;
.super Ljava/lang/Object;
.source "Composer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/Composer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V

    .line 264
    return-void
.end method
