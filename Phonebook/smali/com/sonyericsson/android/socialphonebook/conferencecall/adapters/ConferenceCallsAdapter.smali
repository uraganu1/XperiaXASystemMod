.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConferenceCallsAdapter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateFormatter:Ljava/util/Formatter;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mDateFormatter:Ljava/util/Formatter;

    .line 44
    return-void
.end method

.method private populateParticipants([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "numbers"    # [Ljava/lang/String;
    .param p3, "numberPresentations"    # [Ljava/lang/String;

    .prologue
    .line 124
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 125
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 126
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    aget-object v2, p2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mContext:Landroid/content/Context;

    .line 132
    aget-object v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 131
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 135
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;

    .line 65
    .local v14, "viewHolder":Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;
    const-string/jumbo v2, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    .local v4, "date":J
    const-string/jumbo v2, "contact_names"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string/jumbo v3, "\\\uffff"

    const/4 v6, -0x1

    .line 66
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "names":[Ljava/lang/String;
    const-string/jumbo v2, "numbers"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string/jumbo v3, "\\\uffff"

    const/4 v6, -0x1

    .line 68
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "numbers":[Ljava/lang/String;
    const-string/jumbo v2, "number_presentations"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 70
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "\\\uffff"

    const/4 v6, -0x1

    .line 70
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "numberPresentations":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mDateFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v13

    check-cast v13, Ljava/lang/StringBuilder;

    .line 76
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mDateFormatter:Ljava/util/Formatter;

    .line 79
    const/16 v8, 0x13

    move-wide v6, v4

    .line 78
    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v9

    .line 82
    .local v9, "callTime":Ljava/util/Formatter;
    iput-object v12, v14, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->numbers:[Ljava/lang/String;

    .line 83
    iget-object v2, v14, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->participantsView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    sget v3, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->TAG_ABBREVIATION_ARRAY:I

    .line 84
    invoke-direct {p0, v10, v12, v11}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->populateParticipants([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setTag(ILjava/lang/Object;)V

    .line 85
    iget-object v2, v14, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->participantsView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->requestLayout()V

    .line 86
    iget-object v2, v14, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 52
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;)V

    .line 94
    .local v3, "viewHolder":Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;
    const v4, 0x7f0e0096

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    iput-object v4, v3, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->participantsView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    .line 95
    const v4, 0x7f0e0097

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->dateView:Landroid/widget/TextView;

    .line 100
    const v4, 0x7f0e0095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "conferenceDataView":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v4, 0x7f0e0098

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "editConferenceView":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    return-object v2
.end method

.method public onClick(Landroid/view/View;[Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getConferenceCallIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceParticipantsActivity;->getIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f0e0095
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
