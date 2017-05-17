.class public Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;,
        Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;,
        Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;,
        Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ViewTypes;,
        Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;,
        Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues:[I


# instance fields
.field private mColumnCount:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mCursorListener:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;

.field private mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field private mDividerPosition:I

.field private mGroupMemberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIdIndex:I

.field private mLookupIndex:I

.field private mNameIndex:I

.field private final mPaddingInPixels:I

.field private mPhotoUriIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field private mStatusIndex:I

.field private onDeleteClicked:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->onDeleteClicked:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-com_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-com_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->values()[Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_EDITOR:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-com_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numCols"    # I
    .param p3, "displayType"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 52
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    .line 449
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->onDeleteClicked:Landroid/view/View$OnClickListener;

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 111
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    if-ne p3, v0, :cond_0

    const/4 p2, 0x1

    .end local p2    # "numCols":I
    :cond_0
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    .line 112
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f0d0208

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mPaddingInPixels:I

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->bindColumnIndices()V

    .line 108
    return-void
.end method

.method private bindColumnIndices()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mIdIndex:I

    .line 142
    const/16 v0, 0xb

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mLookupIndex:I

    .line 143
    const/16 v0, 0x9

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mNameIndex:I

    .line 145
    const/16 v0, 0xf

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mStatusIndex:I

    .line 133
    :cond_0
    return-void
.end method

.method private createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 220
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gt v7, p2, :cond_1

    :cond_0
    return-object v6

    .line 222
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 223
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 224
    .local v2, "id":J
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mPhotoUriIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "photoUri":Ljava/lang/String;
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "lookupKey":Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;-><init>()V

    .line 228
    .local v0, "contact":Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mNameIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4    # "name":Ljava/lang/String;
    :goto_0
    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    .line 230
    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->contactId:J

    .line 231
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    .line 232
    if-eqz v5, :cond_2

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_2
    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    .line 234
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v6, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 233
    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    .line 236
    return-object v0

    .line 229
    .restart local v4    # "name":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f090123

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private createContactEntryFromList(Ljava/util/ArrayList;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;I)",
            "Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;"
        }
    .end annotation

    .prologue
    .local p1, "groupMemberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;>;"
    const/4 v3, 0x0

    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p2, :cond_1

    :cond_0
    return-object v3

    .line 209
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 210
    .local v1, "item":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;-><init>()V

    .line 211
    .local v0, "contact":Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mName:Ljava/lang/String;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    .line 212
    iget-wide v2, v1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mContactId:J

    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->contactId:J

    .line 213
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mPhotoUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    .line 214
    return-object v0
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 175
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-getcom_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 183
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0

    .line 193
    :pswitch_1
    return v2

    .line 196
    :pswitch_2
    return v3

    .line 203
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getLayoutResourceId(I)I
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_0
    const v0, 0x7f040042

    return v0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getRowCount(I)I
    .locals 2
    .param p1, "entryCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 283
    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    if-eq v1, v2, :cond_0

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 347
    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_EDITOR:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    if-ne v3, v4, :cond_1

    .line 242
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 243
    :cond_0
    return v2

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    :cond_2
    return v2

    .line 251
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-getcom_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized DisplayType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    return v2

    .line 256
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    return v2

    .line 260
    :pswitch_2
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 263
    .local v1, "starredRowCount":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    sub-int v0, v3, v4

    .line 266
    .local v0, "frequentRowCount":I
    if-nez v0, :cond_4

    :goto_0
    add-int/2addr v0, v2

    .line 269
    add-int v2, v1, v0

    return v2

    .line 266
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "frequentRowCount":I
    .end local v1    # "starredRowCount":I
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    return v2

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getFrequentHeaderPosition()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;>;"
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    .line 295
    .local v1, "contactIndex":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-getcom_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 332
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    :goto_0
    return-object v2

    .line 301
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "columnCounter":I
    :goto_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    .end local v0    # "columnCounter":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "columnCounter":I
    :goto_2
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->createContactEntryFromList(Ljava/util/ArrayList;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v1, v1, 0x1

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    .end local v0    # "columnCounter":I
    :pswitch_3
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 315
    const/4 v0, 0x0

    .restart local v0    # "columnCounter":I
    :goto_3
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 316
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v1, v1, 0x1

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 327
    .end local v0    # "columnCounter":I
    :cond_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v3, v4

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 342
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 413
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-getcom_sonyericsson_android_socialphonebook_list_ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 416
    return v3

    .line 417
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 418
    return v4

    .line 420
    :cond_1
    return v2

    .line 423
    :pswitch_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 424
    const/4 v0, 0x3

    return v0

    .line 425
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 426
    return v4

    .line 428
    :cond_3
    return v2

    .line 433
    :pswitch_2
    return v3

    .line 435
    :pswitch_3
    return v2

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    .line 365
    .local v2, "itemViewType":I
    const/4 v1, 0x0

    .line 366
    .local v1, "contactTileRowView":Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;
    instance-of v3, p2, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 367
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;

    .line 369
    .end local v1    # "contactTileRowView":Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    .local v0, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;>;"
    if-nez v1, :cond_1

    .line 373
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;Landroid/content/Context;I)V

    .line 376
    :cond_1
    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;I)V

    .line 377
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 353
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mColumnCount:I

    .line 121
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDividerPosition:I

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mCursorListener:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mCursorListener:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;->onCursorUpdated(Landroid/database/Cursor;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setCursorListener(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;)V
    .locals 0
    .param p1, "cursorListener"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mCursorListener:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;

    .line 459
    return-void
.end method

.method public setDisplayType(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .param p1, "displayType"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mDisplayType:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 125
    return-void
.end method

.method public setGroupMember(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "groupMemberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    .line 164
    return-void
.end method
