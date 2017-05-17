.class public Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "PermissionAlertDialogFragment.java"


# static fields
.field public static final DIALOG_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final INFORMATIVE_DIALOG:I = 0x3

.field public static final MESSAGE_KEY:Ljava/lang/String; = "message"

.field public static final MESSAGE_SUB_TITLE:Ljava/lang/String; = "massage_sub_title"

.field public static final MESSAGE_TITLE:Ljava/lang/String; = "message_title"

.field public static final NEG_BUTTON_STRING_RES_KEY:Ljava/lang/String; = "neg_btn_str_res"

.field public static final POS_BUTTON_STRING_RES_KEY:Ljava/lang/String; = "pos_btn_str_res"

.field public static final RATIONALE_DIALOG:I = 0x2

.field public static final WELCOME_DIALOG:I = 0x1


# instance fields
.field private mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 24
    return-void
.end method

.method private canCreateDialog()Z
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->canCreateDialog()Z

    move-result v11

    if-nez v11, :cond_0

    .line 67
    const/4 v11, 0x0

    return-object v11

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "message"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "message_title"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "message_title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "massage_sub_title"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "headerText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "pos_btn_str_res"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 73
    .local v9, "positiveTextRes":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "neg_btn_str_res"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 74
    .local v8, "negativeTextRes":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "type"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, "dialogType":I
    const/4 v10, 0x0

    .line 77
    .local v10, "view":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 78
    .local v4, "herderTextView":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 79
    .local v0, "bodyTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 80
    const/4 v11, 0x1

    if-ne v2, v11, :cond_7

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 82
    const v12, 0x7f040011

    const/4 v13, 0x0

    .line 81
    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "view":Landroid/view/ViewGroup;
    check-cast v10, Landroid/view/ViewGroup;

    .line 83
    .local v10, "view":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 84
    const v11, 0x7f0e004a

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "bodyTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .local v0, "bodyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v0    # "bodyTextView":Landroid/widget/TextView;
    .end local v4    # "herderTextView":Landroid/widget/TextView;
    .end local v10    # "view":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance v11, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f100039

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 130
    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 133
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 136
    :cond_2
    if-eqz v10, :cond_3

    .line 137
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 139
    :cond_3
    if-eqz v9, :cond_4

    .line 140
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    :cond_4
    if-eqz v8, :cond_6

    .line 143
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v11, :cond_5

    .line 144
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$2;

    invoke-direct {v11, p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;)V

    iput-object v11, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 152
    :cond_5
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v8, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 156
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$3;

    invoke-direct {v11, p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;)V

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11

    .line 89
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .local v0, "bodyTextView":Landroid/widget/TextView;
    .restart local v4    # "herderTextView":Landroid/widget/TextView;
    .local v10, "view":Landroid/view/ViewGroup;
    :cond_7
    const/4 v11, 0x2

    if-ne v2, v11, :cond_8

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 91
    const v12, 0x7f04000f

    const/4 v13, 0x0

    .line 90
    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "view":Landroid/view/ViewGroup;
    check-cast v10, Landroid/view/ViewGroup;

    .line 92
    .local v10, "view":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 93
    const v11, 0x7f0e0049

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "herderTextView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, "herderTextView":Landroid/widget/TextView;
    const v11, 0x7f0e004a

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "bodyTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, "bodyTextView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    .local v0, "bodyTextView":Landroid/widget/TextView;
    .local v4, "herderTextView":Landroid/widget/TextView;
    .local v10, "view":Landroid/view/ViewGroup;
    :cond_8
    const/4 v11, 0x3

    if-ne v2, v11, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 102
    const v12, 0x7f040010

    const/4 v13, 0x0

    .line 101
    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "view":Landroid/view/ViewGroup;
    check-cast v10, Landroid/view/ViewGroup;

    .line 103
    .local v10, "view":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 104
    const v11, 0x7f0e0049

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "herderTextView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 105
    .local v4, "herderTextView":Landroid/widget/TextView;
    const v11, 0x7f0e004a

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "bodyTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, "bodyTextView":Landroid/widget/TextView;
    const v11, 0x7f0e004b

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 107
    .local v5, "linkTextView":Landroid/widget/TextView;
    const v11, 0x7f0903db

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 110
    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_9
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v11, :cond_1

    .line 115
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;

    invoke-direct {v11, p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;)V

    iput-object v11, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 60
    return-void
.end method

.method public setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method
