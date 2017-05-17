.class public Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
.super Landroid/app/DialogFragment;
.source "ImResizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;,
        Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;
    }
.end annotation


# static fields
.field public static final DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String;


# instance fields
.field private mCheckBoxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFileUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

.field private mOriginalSize:J

.field private mOriginalSizeRadioButton:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRadioGroupSelectListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRememberChoiceBool:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRememberThisCheckBox:Landroid/widget/CheckBox;

.field private mResizeSendOption:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

.field private mResizeSizeRadioButton:Landroid/widget/RadioButton;

.field private mResizedSize:J

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRememberChoiceBool:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSendOption:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSendOption:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSendOption:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    .line 39
    return-void
.end method

.method private initRadioGroup(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 221
    const v4, 0x7f0d00f5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 222
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRadioGroupSelectListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 224
    iget-wide v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizedSize:J

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/FileSize;->newInstance(J)Lcom/sonyericsson/conversations/util/FileSize;

    move-result-object v2

    .line 225
    .local v2, "resizedFileSize":Lcom/sonyericsson/conversations/util/FileSize;
    iget-wide v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mOriginalSize:J

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/FileSize;->newInstance(J)Lcom/sonyericsson/conversations/util/FileSize;

    move-result-object v0

    .line 227
    .local v0, "originalFileSize":Lcom/sonyericsson/conversations/util/FileSize;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/util/FileSize;->getUnit()Lcom/sonyericsson/conversations/util/ByteUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/ByteUnit;->getUnitResId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "resizedFileSizeUnit":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/FileSize;->getUnit()Lcom/sonyericsson/conversations/util/ByteUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/ByteUnit;->getUnitResId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "originalFileSizeUnit":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 231
    const v5, 0x7f0d00f6

    .line 230
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mOriginalSizeRadioButton:Landroid/widget/RadioButton;

    .line 232
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mOriginalSizeRadioButton:Landroid/widget/RadioButton;

    new-array v5, v9, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    .line 232
    const v6, 0x7f0b020f

    invoke-virtual {p0, v6, v5}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 237
    const v5, 0x7f0d00f7

    .line 236
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSizeRadioButton:Landroid/widget/RadioButton;

    .line 238
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSizeRadioButton:Landroid/widget/RadioButton;

    new-array v5, v9, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    .line 239
    const v6, 0x7f0b023c

    .line 238
    invoke-virtual {p0, v6, v5}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mOriginalSizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    sget-object v4, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->ORIGINAL:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    iput-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSendOption:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    sget-object v4, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->RESIZED:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    iput-object v4, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizeSendOption:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    goto :goto_0
.end method

.method public static newInstance(Ljava/util/List;JJ)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
    .locals 5
    .param p1, "originalSize"    # J
    .param p3, "resizedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;JJ)",
            "Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v1, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;-><init>()V

    .line 87
    .local v1, "imResizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "media_content_original_content"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 89
    const-string/jumbo v2, "media_content_resized_size"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 90
    const-string/jumbo v2, "media_content_original_size"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method


# virtual methods
.method public initContentView()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 216
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030050

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRootView:Landroid/view/ViewGroup;

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->initRadioGroup(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRootView:Landroid/view/ViewGroup;

    .line 164
    const v1, 0x7f0d00f8

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRememberThisCheckBox:Landroid/widget/CheckBox;

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRememberThisCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mCheckBoxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "media_content_original_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mFileUris:Ljava/util/List;

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "media_content_original_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mOriginalSize:J

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "media_content_resized_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mResizedSize:J

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRememberChoiceBool:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRadioGroupSelectListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 126
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$2;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 149
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$3;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mCheckBoxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 96
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v2, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mFileUris:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 173
    const v3, 0x7f0b023b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 178
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->initContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 181
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 193
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0d00f9

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    .local v0, "changeLaterTextView":Landroid/widget/TextView;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 195
    const v3, 0x7f0b0122

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 197
    return-object v1

    .line 175
    .end local v0    # "changeLaterTextView":Landroid/widget/TextView;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0b023a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;->onDialogDismissed()V

    .line 250
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 204
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 205
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 201
    return-void
.end method

.method public setListener(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->mListener:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;

    .line 208
    return-void
.end method
