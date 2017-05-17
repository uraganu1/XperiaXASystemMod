.class final Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;
.super Landroid/widget/CursorAdapter;
.source "ContactPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactDataListDialogAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataColumnIndex:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mLabelColumnIndex:I

.field private mMimeTypeIndex:I

.field private mTypeColumnIndex:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 1237
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 1230
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mDataColumnIndex:I

    .line 1231
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mTypeColumnIndex:I

    .line 1232
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mLabelColumnIndex:I

    .line 1233
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mMimeTypeIndex:I

    .line 1238
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1239
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mContext:Landroid/content/Context;

    .line 1235
    return-void
.end method


# virtual methods
.method protected final bindEmailTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/TextView;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aTypeColumn"    # I
    .param p4, "aLabelColumn"    # I

    .prologue
    .line 1300
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1301
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1299
    :goto_0
    return-void

    .line 1303
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1304
    .local v1, "type":I
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bindPhoneTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/TextView;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aTypeColumn"    # I
    .param p4, "aLabelColumn"    # I

    .prologue
    .line 1288
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1289
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1287
    :goto_0
    return-void

    .line 1291
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1292
    .local v1, "type":I
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 1264
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;

    .line 1266
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mDataColumnIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "data":Ljava/lang/String;
    move-object v1, v2

    .line 1268
    .local v1, "contentDescription":Ljava/lang/String;
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mMimeTypeIndex:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mMimeTypeIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1269
    :goto_0
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1270
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    if-eqz v3, :cond_1

    .line 1278
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1279
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mTypeColumnIndex:I

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mLabelColumnIndex:I

    invoke-virtual {p0, v4, p3, v5, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->bindPhoneTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V

    .line 1263
    :cond_1
    :goto_1
    return-void

    .line 1268
    :cond_2
    const/4 v3, 0x0

    .local v3, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1280
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1281
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mTypeColumnIndex:I

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mLabelColumnIndex:I

    invoke-virtual {p0, v4, p3, v5, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->bindEmailTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1245
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1246
    const v4, 0x7f040039

    .line 1245
    invoke-static {p1, v3, v4, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->create(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;

    move-result-object v2

    .line 1248
    .local v2, "itemView":Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;
    const v3, 0x7f0e00ac

    .line 1247
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 1249
    .local v1, "check":Landroid/widget/CheckedTextView;
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setCheckable(Landroid/widget/Checkable;)V

    .line 1250
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 1254
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)V

    .line 1255
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;
    const v3, 0x7f0e0089

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-set0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1256
    const v3, 0x7f0e00ad

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->-set1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1257
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setTag(Ljava/lang/Object;)V

    .line 1259
    return-object v2
.end method
