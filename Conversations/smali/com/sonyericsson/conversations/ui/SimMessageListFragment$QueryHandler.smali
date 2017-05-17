.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SimMessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 187
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 192
    if-eqz p3, :cond_1

    .line 193
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V

    .line 196
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 191
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->-get0(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V

    goto :goto_0
.end method
