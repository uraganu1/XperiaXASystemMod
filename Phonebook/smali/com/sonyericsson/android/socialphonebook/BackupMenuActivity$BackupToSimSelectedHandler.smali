.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;
.super Ljava/lang/Object;
.source "BackupMenuActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupToSimSelectedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;)V
    .locals 11
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 126
    iget-object v7, p1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->convertPathToSub(Ljava/lang/String;)I

    move-result v6

    .line 127
    .local v6, "sub":I
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v7, v6}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkSIM(Landroid/content/Context;I)I

    move-result v2

    .line 129
    .local v2, "checkSimResult":I
    if-ne v2, v9, :cond_4

    .line 130
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I

    move-result v7

    if-nez v7, :cond_3

    .line 133
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 132
    invoke-static {v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 135
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 138
    .local v5, "size":I
    if-le v5, v9, :cond_1

    .line 139
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    const v8, 0x7f09028e

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->showDialog(I)V

    .line 125
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v5    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .restart local v5    # "size":I
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 142
    if-ne v5, v9, :cond_2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 141
    :goto_1
    invoke-static {v8, v7, v6}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Landroid/accounts/Account;I)V

    .line 143
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 145
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v5    # "size":I
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 147
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, "exportIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    const-class v8, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v7, "subscription"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v7, v3}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->finish()V

    goto :goto_0

    .line 154
    .end local v3    # "exportIntent":Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x0

    .line 156
    .local v4, "msg":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 161
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v7, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardNotAvailable(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "msg":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v7, v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .local v4, "msg":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v7, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardNotInserted(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "msg":Ljava/lang/String;
    goto :goto_2

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
