.class public Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDeletionDialogFragment.java"


# static fields
.field private static final ARG_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ARG_LABEL:Ljava/lang/String; = "label"

.field private static final ARG_SHOULD_END_ACTIVITY:Ljava/lang/String; = "endActivity"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(JLjava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;
    .locals 4
    .param p0, "groupId"    # J
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "endActivity"    # Z

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "groupId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    const-string/jumbo v2, "label"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v2, "endActivity"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;-><init>()V

    .line 50
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method

.method private shouldEndActivity()Z
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "endActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected deleteGroup()V
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 78
    .local v2, "groupId":J
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 78
    invoke-static {v4, v2, v3}, Lcom/android/contacts/ContactSaveService;->createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->shouldEndActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f09026c

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v3, 0x7f09026b

    .line 59
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 63
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;)V

    .line 62
    const v4, 0x104000a

    .line 59
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 70
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
