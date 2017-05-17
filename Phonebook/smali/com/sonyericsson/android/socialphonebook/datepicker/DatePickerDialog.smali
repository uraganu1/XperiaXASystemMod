.class public Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field public static final NO_YEAR:I = 0x0

.field private static final YEAR:Ljava/lang/String; = "year"

.field private static final YEAR_OPTIONAL:Ljava/lang/String; = "year_optional"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 134
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "yearOptional"    # Z

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 155
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCallBack:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;

    .line 156
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialYear:I

    .line 157
    iput p5, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 158
    iput p6, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialDay:I

    .line 159
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 160
    .local v7, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .line 162
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 165
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialYear:I

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 167
    const v0, 0x7f090283

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 169
    const/4 v2, -0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 174
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040059

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 175
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 176
    const v0, 0x7f0e00ea

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialDay:I

    move/from16 v4, p7

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->init(IIIZLcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 97
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "yearOptional"    # Z

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 116
    const/4 v2, 0x5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 114
    return-void

    .line 116
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCallBack:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->clearFocus()V

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mCallBack:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getYear()I

    move-result v2

    .line 198
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 197
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;III)V

    .line 194
    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 204
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 203
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "year":I
    const-string/jumbo v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "month":I
    const-string/jumbo v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "day":I
    const-string/jumbo v0, "year_optional"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 238
    .local v4, "yearOptional":Z
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->init(IIIZLcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;)V

    .line 239
    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 232
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string/jumbo v1, "year_optional"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->isYearOptional()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialYear:I

    .line 209
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 210
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mInitialDay:I

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog;->mDatePicker:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->updateDate(III)V

    .line 207
    return-void
.end method
