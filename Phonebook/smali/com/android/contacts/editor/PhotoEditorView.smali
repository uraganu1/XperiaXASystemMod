.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/FrameLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# instance fields
.field private mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z

.field private mTriangleAffordance:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 58
    return-void
.end method

.method private setPhotoImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public clearAllFields()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 215
    return-void
.end method

.method public deleteEditor()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public editNewlyAddedField()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public hideSoftInput()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 97
    const-string/jumbo v2, "input_method"

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 99
    const/4 v2, 0x2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 95
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Photos don\'t support direct field changes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    const v0, 0x7f0e01bd

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    .line 78
    const v0, 0x7f0e0192

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    .line 79
    new-instance v0, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method protected resetDefault()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 182
    iput-boolean v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 183
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 177
    return-void

    :cond_0
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 200
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 191
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 192
    .local v0, "isListenerAttached":Z
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setFocusable(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setClickable(Z)V

    .line 188
    return-void

    .line 191
    .end local v0    # "isListenerAttached":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isListenerAttached":Z
    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 63
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 147
    if-nez p1, :cond_0

    .line 149
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v5, "data15"

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 151
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoImage(Landroid/graphics/Bitmap;)V

    .line 155
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 156
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v2

    .line 165
    .local v2, "size":I
    invoke-static {p1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    .local v1, "scaled":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 167
    .local v0, "compressed":[B
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoto([B)V

    .line 146
    :cond_1
    return-void
.end method

.method public setSuperPrimary(Z)V
    .locals 3
    .param p1, "superPrimary"    # Z

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v2, "is_super_primary"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 173
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 4
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v3, 0x0

    .line 112
    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    .line 113
    iput-boolean p4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    .line 115
    invoke-virtual {p5, p3, p1, p2, v3}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setId(I)V

    .line 117
    if-eqz p2, :cond_1

    .line 119
    const-string/jumbo v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 120
    .local v1, "photoBytes":[B
    if-eqz v1, :cond_0

    .line 122
    array-length v2, v1

    .line 121
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "photo":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoImage(Landroid/graphics/Bitmap;)V

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 126
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 111
    .end local v0    # "photo":Landroid/graphics/Bitmap;
    .end local v1    # "photoBytes":[B
    :goto_0
    return-void

    .line 128
    .restart local v1    # "photoBytes":[B
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0

    .line 131
    .end local v1    # "photoBytes":[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
