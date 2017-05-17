.class public Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;,
        Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;,
        Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;
    }
.end annotation


# static fields
.field public static final DATE:C = 'd'

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field public static final MONTH:C = 'M'

.field public static final NO_YEAR:I = 0x0

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

.field public static final YEAR:C = 'y'


# instance fields
.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mHasYear:Z

.field private mMonth:I

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;

.field private mYear:I

.field private mYearOptional:Z

.field private final mYearPicker:Landroid/widget/NumberPicker;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    const-string/jumbo v7, "layout_inflater"

    .line 133
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 135
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040058

    const/4 v8, 0x1

    invoke-virtual {v3, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 137
    const v7, 0x7f0e00e8

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 138
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 139
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 140
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v8, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$2;-><init>(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 146
    const v7, 0x7f0e00e7

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 147
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 148
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 149
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "months":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v6

    .line 160
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 161
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 162
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 163
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 164
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v8, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$3;

    invoke-direct {v8, p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$3;-><init>(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 178
    const v7, 0x7f0e00e9

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 179
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 180
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v8, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$4;

    invoke-direct {v8, p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$4;-><init>(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 193
    const v7, 0x101017c

    const v8, 0x101017d

    .line 192
    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/16 v8, 0x76c

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 197
    .local v5, "mStartYear":I
    const/4 v7, 0x1

    const/16 v8, 0x834

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 199
    .local v4, "mEndYear":I
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 200
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 202
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 206
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->init(IIILcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;)V

    .line 209
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 212
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->setEnabled(Z)V

    .line 130
    :cond_1
    return-void
.end method

.method private adjustMaxDay()V
    .locals 4

    .prologue
    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 484
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 485
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 486
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 487
    .local v1, "max":I
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 488
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    .line 481
    :cond_0
    return-void

    .line 484
    .end local v1    # "max":I
    :cond_1
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private getCurrentYear()I
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 493
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mOnDateChangedListener:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_1

    .line 494
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    .line 495
    .local v0, "year":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mOnDateChangedListener:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;III)V

    .line 492
    .end local v0    # "year":I
    :cond_1
    return-void

    .line 494
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "year":I
    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 11
    .param p1, "months"    # [Ljava/lang/String;

    .prologue
    .line 235
    const/4 v9, 0x0

    aget-object v9, p1, v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 237
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 236
    const/4 v10, 0x3

    invoke-static {v10, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    .line 242
    .local v4, "format":Ljava/text/DateFormat;
    :goto_0
    instance-of v9, v4, Ljava/text/SimpleDateFormat;

    if-eqz v9, :cond_6

    .line 243
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "format":Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "order":Ljava/lang/String;
    :goto_1
    const v9, 0x7f0e00e6

    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 253
    .local v7, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 255
    const/4 v8, 0x0

    .line 256
    .local v8, "quoted":Z
    const/4 v1, 0x0

    .local v1, "didDay":Z
    const/4 v2, 0x0

    .local v2, "didMonth":Z
    const/4 v3, 0x0

    .line 258
    .local v3, "didYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_b

    .line 259
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 261
    .local v0, "c":C
    const/16 v9, 0x27

    if-ne v0, v9, :cond_0

    .line 262
    if-eqz v8, :cond_7

    const/4 v8, 0x0

    .line 265
    :cond_0
    :goto_3
    if-nez v8, :cond_4

    .line 266
    const/16 v9, 0x64

    if-ne v0, v9, :cond_1

    if-eqz v1, :cond_8

    .line 269
    :cond_1
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_2

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_3

    :cond_2
    if-eqz v2, :cond_9

    .line 272
    :cond_3
    const/16 v9, 0x79

    if-ne v0, v9, :cond_4

    if-eqz v3, :cond_a

    .line 258
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 239
    .end local v0    # "c":C
    .end local v1    # "didDay":Z
    .end local v2    # "didMonth":Z
    .end local v3    # "didYear":Z
    .end local v5    # "i":I
    .end local v6    # "order":Ljava/lang/String;
    .end local v7    # "parent":Landroid/widget/LinearLayout;
    .end local v8    # "quoted":Z
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 246
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v6    # "order":Ljava/lang/String;
    goto :goto_1

    .line 262
    .end local v4    # "format":Ljava/text/DateFormat;
    .restart local v0    # "c":C
    .restart local v1    # "didDay":Z
    .restart local v2    # "didMonth":Z
    .restart local v3    # "didYear":Z
    .restart local v5    # "i":I
    .restart local v7    # "parent":Landroid/widget/LinearLayout;
    .restart local v8    # "quoted":Z
    :cond_7
    const/4 v8, 0x1

    goto :goto_3

    .line 267
    :cond_8
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    const/4 v1, 0x1

    .line 266
    goto :goto_4

    .line 270
    :cond_9
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    const/4 v2, 0x1

    .line 269
    goto :goto_4

    .line 273
    :cond_a
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    const/4 v3, 0x1

    goto :goto_4

    .line 280
    .end local v0    # "c":C
    :cond_b
    if-nez v2, :cond_c

    .line 281
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    :cond_c
    if-nez v1, :cond_d

    .line 284
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    :cond_d
    if-nez v3, :cond_e

    .line 287
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    :cond_e
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 456
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 458
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 459
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 460
    .local v1, "max":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 461
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 462
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 455
    return-void

    .line 458
    .end local v1    # "max":I
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->updateDaySpinner()V

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 444
    return-void

    .line 447
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 390
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(IIILcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;

    .prologue
    .line 422
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->init(IIIZLcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;)V

    .line 421
    return-void
.end method

.method public init(IIIZLcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "yearOptional"    # Z
    .param p5, "onDateChangedListener"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    if-eqz p4, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    .line 436
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    .line 437
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    .line 438
    iput-boolean p4, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    .line 439
    if-eqz p4, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    .line 440
    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mOnDateChangedListener:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$OnDateChangedListener;

    .line 441
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->updateSpinners()V

    .line 434
    return-void

    :cond_1
    move v0, p1

    .line 435
    goto :goto_0

    :cond_2
    move v0, v2

    .line 439
    goto :goto_1
.end method

.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 403
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;

    .line 404
    .local v0, "ss":Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    .line 406
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    .line 407
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    .line 408
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    .line 409
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    .line 410
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->updateSpinners()V

    .line 402
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 396
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 398
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 217
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 292
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    if-eq v0, p2, :cond_3

    .line 293
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->getCurrentYear()I

    move-result p1

    .end local p1    # "year":I
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mYear:I

    .line 294
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mMonth:I

    .line 295
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    .line 296
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->updateSpinners()V

    .line 297
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->notifyDateChanged()V

    .line 291
    :cond_2
    return-void

    .line 292
    .restart local p1    # "year":I
    :cond_3
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->mDay:I

    if-eq v0, p3, :cond_2

    goto :goto_0
.end method
