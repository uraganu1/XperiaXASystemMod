.class public Lcom/android/contacts/interactions/GroupCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupCreationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final ARG_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final ARG_DATA_SET:Ljava/lang/String; = "dataSet"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "createGroupDialog"


# instance fields
.field private final mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 64
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 69
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .prologue
    .line 53
    new-instance v1, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    invoke-direct {v1, p4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;-><init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 54
    .local v1, "dialog":Lcom/android/contacts/interactions/GroupCreationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "accountType"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v3, "accountName"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v3, "dataSet"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 60
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const-string/jumbo v3, "createGroupDialog"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 61
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 52
    return-void
.end method


# virtual methods
.method public getOnGroupCreatedListener()Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    return-object v0
.end method

.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f090160

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 79
    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 10
    .param p1, "groupLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 90
    .local v8, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "accountType"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "accountType":Ljava/lang/String;
    const-string/jumbo v1, "accountName"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "accountName":Ljava/lang/String;
    const-string/jumbo v1, "dataSet"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "dataSet":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    invoke-interface {v1}, Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;->onGroupCreated()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v1, v6, v7, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.EDIT"

    move-object v2, p1

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method
