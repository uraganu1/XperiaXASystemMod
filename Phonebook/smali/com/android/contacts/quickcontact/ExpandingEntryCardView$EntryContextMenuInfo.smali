.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryContextMenuInfo"
.end annotation


# instance fields
.field private final mCopyLabel:Ljava/lang/String;

.field private final mCopyText:Ljava/lang/String;

.field private final mId:J

.field private mIsNeedToHideSetDefaultOption:Z

.field private final mIsSuperPrimary:Z

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "copyText"    # Ljava/lang/String;
    .param p2, "copyLabel"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "isSuperPrimary"    # Z

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsNeedToHideSetDefaultOption:Z

    .line 1030
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyText:Ljava/lang/String;

    .line 1031
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyLabel:Ljava/lang/String;

    .line 1032
    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mMimeType:Ljava/lang/String;

    .line 1033
    iput-wide p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mId:J

    .line 1034
    iput-boolean p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsSuperPrimary:Z

    .line 1029
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 0
    .param p1, "copyText"    # Ljava/lang/String;
    .param p2, "copyLabel"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "isSuperPrimary"    # Z
    .param p7, "isNeedToHideSetDefaultOption"    # Z

    .prologue
    .line 1039
    invoke-direct/range {p0 .. p6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1040
    iput-boolean p7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsNeedToHideSetDefaultOption:Z

    .line 1038
    return-void
.end method


# virtual methods
.method public getCopyLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1056
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedToHideSetDefaultOption()Z
    .locals 1

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsNeedToHideSetDefaultOption:Z

    return v0
.end method

.method public isSuperPrimary()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsSuperPrimary:Z

    return v0
.end method
