.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardEntry"
.end annotation


# instance fields
.field private final mActionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

.field private final mHeader:Ljava/lang/String;

.field private final mId:I

.field private final mIsEditable:Z

.field private final mShouldApplyColor:Z

.field private final mSubHeader:Ljava/lang/String;

.field private final mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/String;

.field private final mTextIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "subHeader"    # Ljava/lang/String;
    .param p4, "subHeaderIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "textIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "shouldApplyColor"    # Z
    .param p8, "isEditable"    # Z
    .param p9, "entryContextMenuInfo"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mId:I

    .line 190
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mHeader:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mSubHeader:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 193
    iput-object p5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mText:Ljava/lang/String;

    .line 194
    iput-object p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mTextIcon:Landroid/graphics/drawable/Drawable;

    .line 195
    iput-boolean p7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mShouldApplyColor:Z

    .line 196
    iput-boolean p8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mIsEditable:Z

    .line 197
    iput-object p9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 198
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mActionItems:Ljava/util/List;

    .line 188
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "subHeader"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "shouldApplyColor"    # Z
    .param p6, "isEditable"    # Z
    .param p7, "entryContextMenuInfo"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .prologue
    .line 182
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 181
    return-void
.end method


# virtual methods
.method addActionItem(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)V
    .locals 1
    .param p1, "actionItem"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .prologue
    .line 242
    const-string/jumbo v0, "Action item must not be null!"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mActionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mActionItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 241
    return-void
.end method

.method getActionItem(I)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mActionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    return-object v0
.end method

.method getActionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mActionItems:Ljava/util/List;

    return-object v0
.end method

.method getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    return-object v0
.end method

.method getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mHeader:Ljava/lang/String;

    return-object v0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mId:I

    return v0
.end method

.method getSubHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mSubHeader:Ljava/lang/String;

    return-object v0
.end method

.method getSubHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method getTextIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mTextIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isEditable()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mIsEditable:Z

    return v0
.end method

.method shouldApplyColor()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->mShouldApplyColor:Z

    return v0
.end method
