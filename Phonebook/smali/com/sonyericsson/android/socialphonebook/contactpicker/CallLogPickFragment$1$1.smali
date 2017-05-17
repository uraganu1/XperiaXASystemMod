.class Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;
.super Ljava/lang/Object;
.source "CallLogPickFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->onQueryComplete(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;
    .param p2, "val$cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->setLoading(Z)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
