.class Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
.super Ljava/lang/Object;
.source "StructuredNameEditorView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/StructuredNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChanged:Z

.field public mSnapshot:Landroid/content/ContentValues;

.field public mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;-><init>()V

    .line 162
    sput-object v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 147
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    .line 141
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    return-void

    :cond_0
    move v0, v1

    .line 157
    goto :goto_0
.end method
