.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# static fields
.field private static final DEFAULT_HOUR:I = 0x8


# instance fields
.field private mDateView:Landroid/widget/Button;

.field private mNoDateString:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 17

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v9, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 191
    .local v9, "column":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 192
    .local v14, "oldValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 194
    .local v13, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 195
    .local v8, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 198
    .local v12, "defaultYear":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v7

    .line 201
    .local v7, "isYearOptional":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    move v4, v12

    .line 204
    .local v4, "oldYear":I
    const/4 v5, 0x0

    .line 205
    .local v5, "oldMonth":I
    const/4 v6, 0x1

    .line 241
    .local v6, "oldDay":I
    :goto_0
    new-instance v3, Lcom/android/contacts/editor/EventFieldEditorView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v13, v9}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    .line 266
    .local v3, "callBack":Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 268
    .local v1, "resultDialog":Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;
    return-object v1

    .line 207
    .end local v1    # "resultDialog":Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;
    .end local v3    # "callBack":Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_0
    new-instance v15, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 209
    .local v15, "position":Ljava/text/ParsePosition;
    iget-object v2, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 210
    .local v10, "date1":Ljava/util/Date;
    if-nez v10, :cond_1

    .line 212
    invoke-static {v14}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 214
    :cond_1
    if-eqz v10, :cond_2

    .line 215
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 217
    .restart local v4    # "oldYear":I
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 218
    .restart local v5    # "oldMonth":I
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "oldDay":I
    goto :goto_0

    .line 225
    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_2
    const-string/jumbo v2, "--02-29"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    if-eqz v7, :cond_3

    const/4 v4, 0x0

    .line 227
    .restart local v4    # "oldYear":I
    :goto_1
    const/4 v5, 0x1

    .line 228
    .restart local v5    # "oldMonth":I
    const/16 v6, 0x1d

    .restart local v6    # "oldDay":I
    goto :goto_0

    .line 226
    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_3
    move v4, v12

    .restart local v4    # "oldYear":I
    goto :goto_1

    .line 230
    .end local v4    # "oldYear":I
    :cond_4
    iget-object v2, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v11

    .line 232
    .local v11, "date2":Ljava/util/Date;
    if-nez v11, :cond_5

    const/4 v2, 0x0

    return-object v2

    .line 234
    :cond_5
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 235
    if-eqz v7, :cond_6

    const/4 v4, 0x0

    .line 236
    .restart local v4    # "oldYear":I
    :goto_2
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 237
    .restart local v5    # "oldMonth":I
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "oldDay":I
    goto :goto_0

    .line 235
    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_6
    move v4, v12

    .restart local v4    # "oldYear":I
    goto :goto_2
.end method

.method public static getDefaultHourForBirthday()I
    .locals 1

    .prologue
    .line 275
    const/16 v0, 0x8

    return v0
.end method

.method private rebuildDateView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 121
    .local v2, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v0, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 122
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    .line 119
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllFields()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v0, v1, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 285
    .local v0, "column":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 141
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    const-string/jumbo v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "dialogId":I
    packed-switch v0, :pswitch_data_0

    .line 147
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0027
        :pswitch_0
    .end packed-switch
.end method

.method public editNewlyAddedField()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/EventFieldEditorView;->showDialog(I)V

    .line 92
    return-void
.end method

.method protected bridge synthetic getType()Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/common/model/account/AccountType$EventEditType;
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 135
    .local v1, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v0, v1, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 136
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    .line 82
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/EventFieldEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v7, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 160
    .local v7, "column":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, "oldValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v10

    .line 163
    .local v10, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 167
    .local v1, "defaultYear":I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v9

    .line 169
    .local v9, "isYearOptional":Z
    if-nez v9, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 171
    .local v12, "position":Ljava/text/ParsePosition;
    iget-object v2, v10, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 174
    .local v8, "date2":Ljava/util/Date;
    if-nez v8, :cond_2

    return-void

    .line 177
    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 178
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 179
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    move v6, v5

    .line 178
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 181
    iget-object v2, v10, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    goto :goto_0
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 97
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .end local p1    # "enabled":Z
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    return-void

    .line 105
    .restart local p1    # "enabled":Z
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 4
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "kind must have 1 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 114
    iget-object v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    .line 110
    return-void

    :cond_2
    move v0, v1

    .line 114
    goto :goto_0
.end method
