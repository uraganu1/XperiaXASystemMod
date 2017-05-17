.class Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;
.super Ljava/lang/Object;
.source "GroupMessageHandler.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 118
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)[J

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;)V

    .line 118
    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;-><init>(Landroid/content/Context;[JLcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;)V

    .line 140
    .local v0, "gpnl":Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 146
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-set1(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-set0(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;->updateGroupMemberDataSize()V

    .line 152
    :cond_1
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;Landroid/database/Cursor;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;->updateGroupMemberDataSize()V

    .line 144
    :cond_3
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
