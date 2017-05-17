.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;
.super Landroid/widget/QuickContactBadge;
.source "GroupPhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDefaultImage:Landroid/graphics/drawable/Drawable;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->mDefaultImage:Landroid/graphics/drawable/Drawable;

    .line 51
    return-void
.end method


# virtual methods
.method public clearAllFields()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteEditor()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public editNewlyAddedField()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/android/contacts/photomanager/ContactPhotoManager;->GROUP_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    .local v0, "roundedDrawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Photos don\'t support direct field changes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/QuickContactBadge;->onFinishInflate()V

    .line 70
    invoke-virtual {p0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setImageToDefault()V

    .line 68
    return-void
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 103
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 93
    return-void
.end method

.method public setImageToDefault()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->mDefaultImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 0
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 99
    return-void
.end method
