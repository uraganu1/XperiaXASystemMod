.class public abstract Lcom/android/contacts/editor/BaseRawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseRawContactEditorView.java"


# instance fields
.field protected mAccountName:Ljava/lang/String;

.field protected mAccountType:Ljava/lang/String;

.field protected mDataSet:Ljava/lang/String;

.field private mPhoto:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method


# virtual methods
.method public dismissPopupWindows()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public getAccountDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getAccountIconDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f0e0036

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 78
    return-void
.end method

.method protected setHasPhotoEditor(Z)V
    .locals 2
    .param p1, "hasPhotoEditor"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setVisibility(I)V

    .line 89
    return-void

    .line 90
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public abstract setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end method
