.class Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;
.super Ljava/lang/Object;
.source "ClickFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/ClickFilter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/ClickFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;->this$0:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;->this$0:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->-set0(Lcom/sonyericsson/conversations/ui/util/ClickFilter;Z)Z

    .line 25
    return-void
.end method
