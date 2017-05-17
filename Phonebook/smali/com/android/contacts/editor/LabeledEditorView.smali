.class public abstract Lcom/android/contacts/editor/LabeledEditorView;
.super Landroid/widget/LinearLayout;
.source "LabeledEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;,
        Lcom/android/contacts/editor/LabeledEditorView$1;
    }
.end annotation


# static fields
.field public static final CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

.field private static final DIALOG_ID_CUSTOM:I = 0x1

.field protected static final DIALOG_ID_KEY:Ljava/lang/String; = "dialog_id"

.field private static final INPUT_TYPE_CUSTOM:I = 0x2001


# instance fields
.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteContainer:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

.field private mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field private mIsAttachedToWindow:Z

.field private mIsDeletable:Z

.field private mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mLabel:Landroid/widget/Spinner;

.field private mLabelContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mReadOnly:Z

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mState:Lcom/android/contacts/common/model/RawContactDelta;

.field private mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field private mWasEmpty:Z


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/editor/LabeledEditorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    sput-object v0, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 99
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 99
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 99
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 120
    return-void
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 380
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f090086

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    const v5, 0x7f040036

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 383
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e00a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 384
    .local v2, "editText":Landroid/widget/EditText;
    const/16 v5, 0x2001

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 385
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 387
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 390
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$3;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/editor/LabeledEditorView$3;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V

    const v6, 0x104000a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$4;

    invoke-direct {v5, p0}, Lcom/android/contacts/editor/LabeledEditorView$4;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$5;

    invoke-direct {v5, p0}, Lcom/android/contacts/editor/LabeledEditorView$5;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 432
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$6;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$6;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 438
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$7;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$7;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 452
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 453
    const/4 v6, 0x5

    .line 452
    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 455
    return-object v1
.end method

.method private getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 3

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    if-nez v1, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    if-nez v1, :cond_0

    .line 503
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 504
    const-string/jumbo v2, "View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity"

    .line 503
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_0
    check-cast v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-interface {v0}, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v1
.end method

.method private rebuildLabel()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    .line 272
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 273
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    sget-object v2, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 270
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private setupDeleteButton()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 207
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupLabelButton(Z)V
    .locals 3
    .param p1, "shouldExist"    # Z

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eqz p1, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabelContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 514
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_0
    const-string/jumbo v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "dialogId":I
    packed-switch v0, :pswitch_data_0

    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid dialogId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteEditor()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 185
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/editor/EditorAnimator;->removeEditorView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public getDelete()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getEntry()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method protected getKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getLabel()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object v0
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method protected isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "dbValue":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    .line 327
    .local v1, "dbValueNoNull":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string/jumbo v2, ""

    .line 328
    .local v2, "valueNoNull":Ljava/lang/String;
    :goto_1
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    return v3

    .line 326
    .end local v1    # "dbValueNoNull":Ljava/lang/String;
    .end local v2    # "valueNoNull":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .restart local v1    # "dbValueNoNull":Ljava/lang/String;
    goto :goto_0

    .line 327
    :cond_1
    move-object v2, p2

    .restart local v2    # "valueNoNull":Ljava/lang/String;
    goto :goto_1

    .line 328
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    return v0
.end method

.method protected notifyEditorListener()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 298
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEmpty()Z

    move-result v0

    .line 303
    .local v0, "isEmpty":Z
    if-eqz v0, :cond_2

    .line 304
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 319
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 297
    return-void

    .line 310
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :goto_1
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->notifyEditorListener()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    .line 174
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->notifyEditorListener()V

    .line 281
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 128
    const v0, 0x7f0e0139

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    .line 130
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setId(I)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    const v0, 0x7f0e0138

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabelContainer:Landroid/view/View;

    .line 134
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0e0142

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/LabeledEditorView$2;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 126
    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onTypeSelectionChange(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 472
    .local v0, "selected":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-ne v0, v1, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget-object v1, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 477
    return-void

    .line 480
    :cond_1
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 481
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->showDialog(I)V

    .line 469
    :goto_0
    return-void

    .line 484
    :cond_2
    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 485
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v2, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 486
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    .line 487
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 488
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0
.end method

.method protected rebuildValues()V
    .locals 6

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 331
    return-void
.end method

.method protected abstract requestFocusForFirstEditField()V
.end method

.method protected saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 236
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->setupDeleteButton()V

    .line 234
    return-void
.end method

.method public setDeleteButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 229
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 242
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    move v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_1

    .end local p1    # "enabled":Z
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 240
    return-void

    .restart local p1    # "enabled":Z
    :cond_0
    move v0, v1

    .line 242
    goto :goto_0

    :cond_1
    move p1, v1

    .line 243
    goto :goto_1
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v1, 0x0

    .line 342
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 343
    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    .line 344
    iput-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    .line 345
    iput-boolean p4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    .line 346
    iput-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 347
    const/4 v2, -0x1

    invoke-virtual {p5, p3, p1, p2, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setId(I)V

    .line 349
    invoke-virtual {p2}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    .line 352
    return-void

    .line 354
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    .line 357
    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 358
    .local v0, "hasTypes":Z
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->setupLabelButton(Z)V

    .line 359
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 360
    if-eqz v0, :cond_2

    .line 361
    invoke-static {p2, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 362
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    .line 341
    :cond_2
    return-void
.end method

.method showDialog(I)V
    .locals 2
    .param p1, "bundleDialogId"    # I

    .prologue
    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "dialog_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/util/DialogManager;->showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 493
    return-void
.end method

.method updateCustomDialogOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 459
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 460
    .local v0, "okButton":Landroid/widget/Button;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 458
    return-void

    .line 460
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
