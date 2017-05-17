.class Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$1;
.super Ljava/lang/Object;
.source "FileErrorHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->startErrorHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-wrap0(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)V

    .line 46
    return-void
.end method
