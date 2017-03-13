.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p2, "val$addUsersWhenLocked"    # Z

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p1, [Landroid/util/SparseArray;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "params":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    aget-object v19, p1, v4

    .line 167
    .local v19, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v26

    .line 168
    .local v26, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v26, :cond_0

    .line 169
    const/4 v4, 0x0

    return-object v4

    .line 171
    :cond_0
    new-instance v28, Ljava/util/ArrayList;

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v28, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    .line 173
    .local v22, "currentId":I
    const/4 v2, 0x0

    .line 174
    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 175
    const v5, 0x7f0a00a4

    .line 174
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 177
    .local v18, "avatarSize":I
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v25, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 178
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v22

    if-ne v0, v4, :cond_2

    const/4 v6, 0x1

    .line 179
    .local v6, "isCurrent":Z
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v4, 0x0

    .line 181
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 182
    const/4 v8, 0x0

    .line 180
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_0

    .line 178
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v6    # "isCurrent":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "isCurrent":Z
    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 185
    .local v9, "picture":Landroid/graphics/Bitmap;
    if-nez v9, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 188
    if-eqz v9, :cond_4

    .line 189
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-static {v9, v0, v1}, Lcom/android/systemui/BitmapHelper;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 193
    :cond_4
    if-eqz v6, :cond_5

    const/16 v24, 0x0

    .line 194
    .local v24, "index":I
    :goto_2
    new-instance v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    .line 195
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move v11, v6

    .line 194
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 193
    .end local v24    # "index":I
    :cond_5
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v24

    .restart local v24    # "index":I
    goto :goto_2

    .line 199
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "isCurrent":Z
    .end local v9    # "picture":Landroid/graphics/Bitmap;
    .end local v24    # "index":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    .line 200
    const-string/jumbo v5, "no_add_user"

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 199
    invoke-virtual {v4, v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v27, 0x0

    .line 202
    .local v27, "ownerCanCreateUsers":Z
    :goto_3
    if-nez v22, :cond_c

    move/from16 v23, v27

    .line 203
    :goto_4
    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->val$addUsersWhenLocked:Z

    move/from16 v17, v0

    .line 204
    :goto_5
    if-nez v23, :cond_7

    if-eqz v17, :cond_f

    .line 205
    :cond_7
    if-nez v2, :cond_e

    const/16 v20, 0x1

    .line 206
    .local v20, "canCreateGuest":Z
    :goto_6
    if-nez v23, :cond_8

    if-eqz v17, :cond_10

    .line 207
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v21

    .line 208
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->val$addUsersWhenLocked:Z

    if-eqz v4, :cond_11

    const/16 v16, 0x0

    .line 210
    .local v16, "createIsRestricted":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 211
    if-nez v2, :cond_12

    .line 212
    if-eqz v20, :cond_9

    .line 213
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 214
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 215
    const/4 v15, 0x0

    .line 213
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v21, :cond_a

    .line 224
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 225
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 224
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_a
    return-object v28

    .line 199
    .end local v16    # "createIsRestricted":Z
    .end local v20    # "canCreateGuest":Z
    .end local v27    # "ownerCanCreateUsers":Z
    :cond_b
    const/16 v27, 0x1

    .restart local v27    # "ownerCanCreateUsers":Z
    goto :goto_3

    .line 202
    :cond_c
    const/16 v23, 0x0

    .local v23, "currentUserCanCreateUsers":Z
    goto :goto_4

    .line 203
    .end local v23    # "currentUserCanCreateUsers":Z
    :cond_d
    const/16 v17, 0x0

    .local v17, "anyoneCanCreateUsers":Z
    goto :goto_5

    .line 205
    .end local v17    # "anyoneCanCreateUsers":Z
    :cond_e
    const/16 v20, 0x0

    .restart local v20    # "canCreateGuest":Z
    goto :goto_6

    .line 204
    .end local v20    # "canCreateGuest":Z
    :cond_f
    const/16 v20, 0x0

    .restart local v20    # "canCreateGuest":Z
    goto :goto_6

    .line 206
    :cond_10
    const/16 v21, 0x0

    .local v21, "canCreateUser":Z
    goto :goto_7

    .line 208
    .end local v21    # "canCreateUser":Z
    :cond_11
    const/16 v16, 0x1

    .restart local v16    # "createIsRestricted":Z
    goto :goto_8

    .line 218
    :cond_12
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_13

    const/16 v24, 0x0

    .line 219
    .restart local v24    # "index":I
    :goto_a
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 218
    .end local v24    # "index":I
    :cond_13
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v24

    .restart local v24    # "index":I
    goto :goto_a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userRecords"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "userRecords":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "userRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 233
    :cond_0
    return-void
.end method
