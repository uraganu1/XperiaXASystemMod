.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# instance fields
.field private mAddFieldFooter:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mReadOnly:Z

.field private final mRunWhenWindowFocused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/common/model/RawContactDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->runWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method private createEditorView(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/view/View;
    .locals 8
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget v2, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 205
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->isEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 208
    check-cast v0, Lcom/android/contacts/editor/Editor;

    .line 209
    .local v0, "editor":Lcom/android/contacts/editor/Editor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 211
    invoke-interface {v0, p0}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 213
    .end local v0    # "editor":Lcom/android/contacts/editor/Editor;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    return-object v7

    .line 198
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v6

    .line 199
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot allocate editor with layout resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget v3, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->editorLayoutResourceId:I

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, " for MIME type "

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v3, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    const-string/jumbo v3, " with error "

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEmptyEditors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "emptyEditorViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    .line 283
    check-cast v3, Lcom/android/contacts/editor/Editor;

    invoke-interface {v3}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method private hasEmptyEditor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEmptyNoop(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->isNoop()Z

    move-result v4

    if-nez v4, :cond_0

    return v5

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 223
    .local v1, "fieldCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 224
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 225
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return v5

    .line 223
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "column":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method private postWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 343
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/KindSectionView$2;-><init>(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method private runWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 330
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyEditors()V
    .locals 5

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "emptyEditors":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 266
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "emptyEditorView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 269
    .local v0, "emptyEditorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 261
    .end local v0    # "emptyEditorView":Landroid/view/View;
    .end local v1    # "emptyEditorView$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updateSectionVisible()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setVisibility(I)V

    .line 231
    return-void

    .line 232
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addItem()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 352
    const/4 v2, 0x0

    .line 354
    .local v2, "values":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget v3, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ne v3, v4, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 356
    return-void

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 361
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 362
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 367
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 368
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v3, v4}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 371
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "newField":Landroid/view/View;
    instance-of v3, v1, Lcom/android/contacts/editor/Editor;

    if-eqz v3, :cond_3

    .line 373
    new-instance v3, Lcom/android/contacts/editor/KindSectionView$3;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/editor/KindSectionView$3;-><init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->postWhenWindowFocused(Ljava/lang/Runnable;)V

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    .line 351
    return-void
.end method

.method public getEditorCount()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getEditors()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, "view":Landroid/view/View;
    check-cast v1, Lcom/android/contacts/editor/Editor;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const/4 v2, 0x0

    return v2

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    return v0
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 2
    .param p1, "editor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->clearAllFields()V

    .line 117
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setDrawingCacheEnabled(Z)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    const v0, 0x7f0e0137

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0e01bb

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 104
    const v0, 0x7f0e01bc

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/KindSectionView$1;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 96
    return-void
.end method

.method public onRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 133
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible(Z)V

    .line 130
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 318
    if-eqz p1, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 320
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 322
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 316
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public rebuildFromState()V
    .locals 5

    .prologue
    .line 170
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/RawContactDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v2

    .line 175
    .local v2, "hasEntries":Z
    if-eqz v2, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 178
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->isEmptyNoop(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/view/View;

    goto :goto_0

    .line 168
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 76
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 78
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-eqz v2, :cond_2

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_1
    return-void

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 4
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "readOnly"    # Z
    .param p4, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 139
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 140
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    .line 141
    iput-boolean p3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    .line 142
    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 144
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setId(I)V

    .line 147
    iget v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    if-nez v0, :cond_1

    .line 148
    :cond_0
    const-string/jumbo v0, ""

    .line 147
    :goto_0
    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 153
    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible(Z)V

    .line 154
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    .line 138
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTitleVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 162
    const v0, 0x7f0e01ba

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void

    .line 162
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updateAddFooterVisible(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyEditors()V

    .line 241
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->hasEmptyEditor()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/EditorAnimator;->showAddFieldFooter(Landroid/view/View;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_1
    if-eqz p1, :cond_2

    .line 251
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/EditorAnimator;->hideAddFieldFooter(Landroid/view/View;)V

    .line 235
    :goto_1
    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
