.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMinFieldHeight:I

.field private mOptionalFieldEditTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 64
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mOptionalFieldEditTexts:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 64
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mOptionalFieldEditTexts:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 64
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mOptionalFieldEditTexts:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 80
    return-void
.end method

.method private anyOptionalFieldWithoutVisibleValue()Z
    .locals 3

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mOptionalFieldEditTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "current$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 463
    .local v0, "current":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    const/4 v2, 0x1

    return v2

    .line 467
    .end local v0    # "current":Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private createFieldView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "fieldView":Landroid/widget/EditText;
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string/jumbo v1, "data2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    const-string/jumbo v1, "data5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 330
    if-nez v1, :cond_0

    .line 331
    const-string/jumbo v1, "data3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 329
    if-eqz v1, :cond_1

    .line 333
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;

    .end local v0    # "fieldView":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "fieldView":Landroid/widget/EditText;
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 338
    return-object v0

    .line 335
    .local v0, "fieldView":Landroid/widget/EditText;
    :cond_1
    new-instance v0, Landroid/widget/EditText;

    .end local v0    # "fieldView":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .local v0, "fieldView":Landroid/widget/EditText;
    goto :goto_0
.end method

.method private expansionViewShouldBeVisible()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    if-nez v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->anyOptionalFieldWithoutVisibleValue()Z

    move-result v0

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleExpansionViewState()V
    .locals 2

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->expansionViewShouldBeVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 449
    invoke-direct {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setExpansionViewEnabledState()V

    .line 447
    return-void
.end method

.method private linkPhoneticFieldView(Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "originalField"    # Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    .param p2, "phoneticField"    # Landroid/widget/EditText;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;->setTarget(Landroid/widget/EditText;)V

    .line 348
    :cond_0
    return-void
.end method

.method private setExpansionViewEnabledState()V
    .locals 2

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 452
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupExpansionView(ZZ)V
    .locals 2
    .param p1, "shouldExist"    # Z
    .param p2, "collapsed"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f02009e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :goto_1
    return-void

    .line 160
    :cond_0
    const v0, 0x7f02009d

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearAllFields()V
    .locals 5

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 475
    .local v0, "fieldEditText":Landroid/widget/EditText;
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "fieldEditText":Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public editNewlyAddedField()V
    .locals 4

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    sget-object v2, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to show soft input method."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 358
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const/4 v2, 0x0

    return v2

    .line 356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "newFieldValue"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-super {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->handleExpansionViewState()V

    .line 441
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f0d001f

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 94
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 95
    const v0, 0x7f0e0135

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v2, p1

    .line 393
    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 394
    .local v2, "ss":Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 396
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 398
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 399
    .local v1, "numChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 375
    .local v3, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 377
    .local v2, "ss":Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 379
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 380
    .local v1, "numChildren":I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 382
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "i":I
    .end local v1    # "numChildren":I
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    .restart local v1    # "numChildren":I
    goto :goto_0

    .line 385
    .restart local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "firstField":Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 171
    .local v0, "anyFieldHasFocus":Z
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v5, v4

    .end local v2    # "firstField":Landroid/widget/EditText;
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 172
    .local v1, "editText":Landroid/widget/EditText;
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 173
    move-object v2, v1

    .line 175
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    const/4 v0, 0x1

    .line 180
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    .end local v0    # "anyFieldHasFocus":Z
    :cond_2
    return-void

    .line 171
    .restart local v0    # "anyFieldHasFocus":Z
    .restart local v1    # "editText":Landroid/widget/EditText;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 146
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, p1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 147
    goto :goto_1

    .line 150
    .end local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .end local p1    # "enabled":Z
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 142
    return-void

    .restart local p1    # "enabled":Z
    :cond_2
    move p1, v2

    .line 150
    goto :goto_2
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 24
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v9, v21, v20

    .line 193
    .local v9, "fieldEditText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 197
    .end local v9    # "fieldEditText":Landroid/widget/EditText;
    :cond_0
    const/4 v6, 0x0

    .line 198
    .local v6, "familyName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    const/4 v11, 0x0

    .line 199
    .local v11, "givenName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    const/4 v14, 0x0

    .line 201
    .local v14, "middleName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    const/4 v15, 0x0

    .line 202
    .local v15, "phoneticFamilyName":Landroid/widget/EditText;
    const/16 v16, 0x0

    .line 203
    .local v16, "phoneticGivenName":Landroid/widget/EditText;
    const/16 v17, 0x0

    .line 205
    .local v17, "phoneticMiddleName":Landroid/widget/EditText;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    .line 206
    .local v8, "fieldCount":I
    new-array v0, v8, [Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 207
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mOptionalFieldEditTexts:Ljava/util/List;

    .line 208
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 210
    const/4 v12, 0x0

    .end local v6    # "familyName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    .end local v11    # "givenName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    .end local v14    # "middleName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    .end local v15    # "phoneticFamilyName":Landroid/widget/EditText;
    .end local v16    # "phoneticGivenName":Landroid/widget/EditText;
    .end local v17    # "phoneticMiddleName":Landroid/widget/EditText;
    .local v12, "index":I
    :goto_1
    if-ge v12, v8, :cond_17

    .line 211
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 212
    .local v7, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->createFieldView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    .line 213
    .local v10, "fieldView":Landroid/widget/EditText;
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    invoke-virtual {v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;->isMultiLine()Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, -0x2

    .line 213
    :goto_2
    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 218
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 222
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x1030044

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v20, v0

    aput-object v10, v20, v12

    .line 225
    iget-boolean v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mOptionalFieldEditTexts:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setId(I)V

    .line 230
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 231
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 233
    :cond_2
    iget v13, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 234
    .local v13, "inputType":I
    invoke-virtual {v10, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 235
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v13, v0, :cond_3

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 240
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setTextDirection(I)V

    .line 241
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 248
    :cond_3
    const v20, 0x10000005

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 251
    iget-object v4, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 252
    .local v4, "column":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 253
    .local v18, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    if-eqz v18, :cond_8

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    .line 259
    new-instance v20, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz p4, :cond_9

    :cond_4
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 277
    iget-boolean v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->editable:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 278
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 291
    :goto_6
    const-string/jumbo v20, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 292
    const-string/jumbo v20, "data2"

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object v11, v10

    .line 293
    check-cast v11, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;

    .line 307
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 214
    .end local v4    # "column":Ljava/lang/String;
    .end local v13    # "inputType":I
    .end local v18    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v20, v0

    goto/16 :goto_2

    .line 220
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_3

    .line 256
    .restart local v4    # "column":Ljava/lang/String;
    .restart local v13    # "inputType":I
    .restart local v18    # "value":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    goto :goto_4

    .line 275
    :cond_9
    const/16 v20, 0x1

    goto :goto_5

    .line 279
    :cond_a
    iget-boolean v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 280
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_6

    :cond_b
    const/16 v20, 0x8

    goto :goto_8

    .line 282
    :cond_c
    iget-boolean v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 283
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 284
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const/16 v20, 0x8

    :goto_9
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_6

    :cond_d
    const/16 v20, 0x0

    goto :goto_9

    .line 287
    :cond_e
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    iget-boolean v5, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 288
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    move/from16 v19, v5

    .line 289
    :goto_b
    if-eqz v19, :cond_11

    const/16 v20, 0x8

    :goto_c
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_6

    .line 287
    :cond_f
    const/4 v5, 0x0

    .local v5, "couldHide":Z
    goto :goto_a

    .line 288
    .end local v5    # "couldHide":Z
    :cond_10
    const/16 v19, 0x0

    .local v19, "willHide":Z
    goto :goto_b

    .line 289
    .end local v19    # "willHide":Z
    :cond_11
    const/16 v20, 0x0

    goto :goto_c

    .line 294
    :cond_12
    const-string/jumbo v20, "data5"

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object v14, v10

    .line 295
    check-cast v14, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;

    .local v14, "middleName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    goto/16 :goto_7

    .line 296
    .end local v14    # "middleName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    :cond_13
    const-string/jumbo v20, "data3"

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object v6, v10

    .line 297
    check-cast v6, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;

    .local v6, "familyName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    goto/16 :goto_7

    .line 298
    .end local v6    # "familyName":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    :cond_14
    const-string/jumbo v20, "data7"

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 299
    move-object/from16 v16, v10

    .local v16, "phoneticGivenName":Landroid/widget/EditText;
    goto/16 :goto_7

    .line 300
    .end local v16    # "phoneticGivenName":Landroid/widget/EditText;
    :cond_15
    const-string/jumbo v20, "data8"

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 301
    move-object/from16 v17, v10

    .local v17, "phoneticMiddleName":Landroid/widget/EditText;
    goto/16 :goto_7

    .line 302
    .end local v17    # "phoneticMiddleName":Landroid/widget/EditText;
    :cond_16
    const-string/jumbo v20, "data9"

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 303
    move-object v15, v10

    .local v15, "phoneticFamilyName":Landroid/widget/EditText;
    goto/16 :goto_7

    .line 310
    .end local v4    # "column":Ljava/lang/String;
    .end local v7    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v10    # "fieldView":Landroid/widget/EditText;
    .end local v13    # "inputType":I
    .end local v15    # "phoneticFamilyName":Landroid/widget/EditText;
    .end local v18    # "value":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->linkPhoneticFieldView(Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;Landroid/widget/EditText;)V

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->linkPhoneticFieldView(Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;Landroid/widget/EditText;)V

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/android/contacts/editor/TextFieldsEditorView;->linkPhoneticFieldView(Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;Landroid/widget/EditText;)V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->handleExpansionViewState()V

    .line 188
    return-void
.end method
