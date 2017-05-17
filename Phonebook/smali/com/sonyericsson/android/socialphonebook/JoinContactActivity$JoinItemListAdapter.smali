.class final Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.source "JoinContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JoinItemListAdapter"
.end annotation


# instance fields
.field private mSuggestionsCursor:Landroid/database/Cursor;

.field private mSuggestionsCursorCount:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    .line 761
    const v0, 0x7f04004c

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 762
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 760
    return-void
.end method

.method private getRealPosition(I)I
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 1072
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v0, :cond_1

    .line 1075
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1078
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 1083
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 1089
    :cond_1
    return p1
.end method

.method private getSeparatorId(I)I
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, "separatorId":I
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_0

    .line 920
    if-nez p1, :cond_1

    .line 921
    const v0, 0x7f09006f

    .line 926
    :cond_0
    :goto_0
    return v0

    .line 922
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_0

    .line 923
    const v0, 0x7f090070

    goto :goto_0
.end method

.method private isShowAllContactsItemPosition(I)Z
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 908
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_0

    .line 909
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v1, v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 908
    :cond_0
    return v0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 774
    if-nez p1, :cond_1

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    .line 769
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    goto :goto_0
.end method


# virtual methods
.method protected bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;

    .line 972
    .local v6, "cache":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mDisplayOrder:Z

    if-nez v0, :cond_1

    .line 973
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Ljava/lang/String;)Ljava/lang/String;

    .line 978
    :goto_0
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get3(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v0

    .line 980
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Ljava/lang/String;

    move-result-object v2

    .line 979
    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    :goto_1
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get4(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v1

    .line 987
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 986
    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V

    .line 990
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 991
    .local v8, "cid":J
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    .line 992
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v2

    .line 991
    invoke-static {v0, v8, v9, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getContactAccount(Landroid/content/Context;JLandroid/widget/TextView;Landroid/widget/ImageView;)Z

    .line 993
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 994
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get5(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 968
    .end local v6    # "cache":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;
    .end local v8    # "cid":J
    :cond_0
    :goto_2
    return-void

    .line 975
    .restart local v6    # "cache":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 982
    :cond_2
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get3(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 996
    .restart local v8    # "cid":J
    :cond_3
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get5(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1007
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1009
    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 1010
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .line 1011
    .local v0, "cursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->-get2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 1012
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->-get0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1015
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setSearchBoxVisibility(Z)V

    .line 1044
    .end local v0    # "cursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->restoreListState(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    .line 1046
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1006
    return-void

    .line 1019
    .restart local v0    # "cursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 1021
    const v2, 0x7f09008c

    .line 1020
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1022
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1028
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1029
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1030
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 1025
    const v2, 0x7f09008b

    .line 1024
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1026
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 1034
    .end local v0    # "cursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_2
    if-eqz p1, :cond_3

    .line 1035
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1037
    :cond_3
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 1038
    invoke-super {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public doOnContentChanged()V
    .locals 3

    .prologue
    .line 827
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "constraint":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 833
    .local v1, "filter":Landroid/widget/Filter;
    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 838
    .end local v1    # "filter":Landroid/widget/Filter;
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 826
    return-void

    .line 836
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->startQuery()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 810
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getCount()I

    move-result v0

    .line 811
    .local v0, "superCount":I
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_0

    .line 814
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    return v1

    .line 816
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    .line 1096
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v0, :cond_0

    .line 1097
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-gt p1, v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getRealPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    return-object v0

    .line 1101
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "aPosition"    # I

    .prologue
    .line 1108
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v0, :cond_1

    .line 1109
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 1117
    const-string/jumbo v2, "_id"

    .line 1116
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 1119
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1122
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 849
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->isShowAllContactsItemPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    return v1

    .line 852
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getSeparatorId(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    return v1

    .line 856
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "aPosition"    # I
    .param p2, "aConvertView"    # Landroid/view/View;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 864
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->isShowAllContactsItemPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 865
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04004f

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 870
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getSeparatorId(I)I

    move-result v2

    .line 871
    .local v2, "separatorId":I
    if-eqz v2, :cond_1

    .line 872
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 873
    const v6, 0x7f0400af

    .line 872
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 874
    .local v4, "view":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 875
    return-object v4

    .line 878
    .end local v4    # "view":Landroid/widget/TextView;
    :cond_1
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v5, :cond_2

    .line 879
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v5, v5, 0x2

    if-ge p1, v5, :cond_2

    .line 880
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 885
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getRealPosition(I)I

    move-result v1

    .line 886
    .local v1, "realPosition":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 887
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t move cursor to position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 887
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 882
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "realPosition":I
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 891
    .restart local v1    # "realPosition":I
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 892
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v0, p3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 896
    .local v3, "v":Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v5, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 897
    return-object v3

    .line 894
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    move-object v3, p2

    .restart local v3    # "v":Landroid/view/View;
    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "aPosition"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 790
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->isShowAllContactsItemPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    return v0

    .line 793
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getSeparatorId(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    return v1

    .line 796
    :cond_1
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v2, :cond_2

    .line 797
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_2

    .line 798
    return v0

    .line 800
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getItemId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 940
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;-><init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)V

    .line 943
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;
    const v2, 0x7f0e00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set3(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 944
    const v2, 0x7f0e00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set4(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;

    .line 945
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get4(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 946
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-get4(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 948
    const v2, 0x7f0e0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set5(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Landroid/view/View;)Landroid/view/View;

    .line 949
    const v2, 0x7f0e0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 950
    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;->-set1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 952
    const v2, 0x7f0e00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 954
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 955
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .param p1, "aConstraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1059
    if-nez p1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
