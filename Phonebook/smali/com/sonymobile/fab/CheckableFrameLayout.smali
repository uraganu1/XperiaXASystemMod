.class public Lcom/sonymobile/fab/CheckableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CheckableFrameLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;,
        Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;
    }
.end annotation


# static fields
.field private static final STATE_CHECKED:[I


# instance fields
.field private mBroadcastingStateChanges:Z

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/sonymobile/fab/CheckableFrameLayout;->STATE_CHECKED:[I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/fab/CheckableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/fab/CheckableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/fab/CheckableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    sget-object v1, Lcom/sonymobile/fab/CheckableFrameLayout;->STATE_CHECKED:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/fab/CheckableFrameLayout;->setChecked(ZZ)V

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method private dispatchCheckedChanged(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/fab/CheckableFrameLayout;->getChildCount()I

    move-result v1

    .line 225
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 226
    invoke-virtual {p0, v2}, Lcom/sonymobile/fab/CheckableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 228
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 225
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private setChecked(ZZ)V
    .locals 3
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-boolean v1, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mChecked:Z

    if-eq v1, p1, :cond_1

    .line 195
    iput-boolean p1, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mChecked:Z

    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/fab/CheckableFrameLayout;->refreshDrawableState()V

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/fab/CheckableFrameLayout;->onCheckedChanged(ZZ)V

    .line 201
    invoke-direct {p0, p1}, Lcom/sonymobile/fab/CheckableFrameLayout;->dispatchCheckedChanged(Z)V

    .line 203
    iget-boolean v1, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mBroadcastingStateChanges:Z

    if-nez v1, :cond_1

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mBroadcastingStateChanges:Z

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mOnCheckedChangeListener:Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;

    .line 207
    .local v0, "listener":Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p0, p1}, Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;->onCheckedChanged(Lcom/sonymobile/fab/CheckableFrameLayout;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    iput-boolean v2, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mBroadcastingStateChanges:Z

    .line 193
    .end local v0    # "listener":Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;
    :cond_1
    return-void

    .line 210
    :catchall_0
    move-exception v1

    .line 211
    iput-boolean v2, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mBroadcastingStateChanges:Z

    .line 210
    throw v1
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mChecked:Z

    return v0
.end method

.method protected onCheckedChanged(ZZ)V
    .locals 0
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 184
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 167
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 168
    .local v0, "state":[I
    invoke-virtual {p0}, Lcom/sonymobile/fab/CheckableFrameLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Lcom/sonymobile/fab/CheckableFrameLayout;->STATE_CHECKED:[I

    invoke-static {v0, v1}, Lcom/sonymobile/fab/CheckableFrameLayout;->mergeDrawableStates([I[I)[I

    .line 171
    :cond_0
    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 156
    check-cast v0, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;

    .line 157
    .local v0, "ss":Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;
    invoke-virtual {v0}, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 158
    iget-boolean v1, v0, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;->checked:Z

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/fab/CheckableFrameLayout;->setChecked(ZZ)V

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/fab/CheckableFrameLayout;->requestLayout()V

    .line 155
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 147
    .local v0, "state":Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;
    invoke-virtual {p0}, Lcom/sonymobile/fab/CheckableFrameLayout;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;->checked:Z

    .line 148
    return-object v0
.end method

.method public final setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/fab/CheckableFrameLayout;->setChecked(ZZ)V

    .line 121
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mOnCheckedChangeListener:Lcom/sonymobile/fab/CheckableFrameLayout$OnCheckedChangeListener;

    .line 113
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/sonymobile/fab/CheckableFrameLayout;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/fab/CheckableFrameLayout;->setChecked(Z)V

    .line 137
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
