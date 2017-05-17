.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1078
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get6(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 18
    .param p2, "cursor"    # Landroid/database/Cursor;
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
    .line 1083
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1087
    :cond_0
    const/4 v2, 0x1

    .line 1086
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1089
    .local v14, "rawContactId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1088
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1091
    .local v11, "contactId":Ljava/lang/String;
    const/4 v2, 0x2

    .line 1090
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, "name":Ljava/lang/String;
    const/16 v2, 0x9

    .line 1092
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1094
    .local v16, "tempPhotoUri":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1095
    .local v10, "photoUri":Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1096
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1098
    .end local v10    # "photoUri":Landroid/net/Uri;
    :cond_1
    const-wide/16 v8, 0x0

    .line 1100
    .local v8, "photoId":J
    const/16 v2, 0x8

    .line 1099
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1101
    .local v15, "tempPhotoId":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 1102
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1104
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1112
    :cond_3
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 1116
    .local v12, "item":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1105
    .end local v12    # "item":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    .end local v13    # "item$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0900a0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1108
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1109
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1108
    invoke-direct/range {v2 .. v10}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;-><init>(Ljava/lang/String;JJJLandroid/net/Uri;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1119
    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "photoId":J
    .end local v11    # "contactId":Ljava/lang/String;
    .end local v14    # "rawContactId":Ljava/lang/String;
    .end local v15    # "tempPhotoId":Ljava/lang/String;
    .end local v16    # "tempPhotoUri":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap11(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    .line 1082
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 1082
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1125
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
