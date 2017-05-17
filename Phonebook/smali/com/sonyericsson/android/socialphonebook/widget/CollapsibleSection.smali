.class public Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;
.super Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;
.source "CollapsibleSection.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;
    }
.end annotation


# static fields
.field private static final COLLAPSIBLE_INIT_CLOSE:Ljava/lang/String; = "COLLAPSIBLE_INIT_CLOSE"

.field private static final COLLAPSIBLE_INIT_OPEN:Ljava/lang/String; = "COLLAPSIBLE_INIT_OPEN"

.field private static final NO_COLLAPSIBLE:Ljava/lang/String; = "NO_COLLAPSIBLE"

.field private static final SEPARATOR_CHAR:Ljava/lang/String; = ","

.field private static final USE_TAIL_CHARACTER:Ljava/lang/String; = "USE_TAIL_CHAR"


# instance fields
.field private mBoxHeight:F

.field private mCountForFontSizeCalculation:I

.field private mCurrentLabels:[Ljava/lang/String;

.field private mCurrentTextScaleXs:[F

.field private mLabels:[Ljava/lang/String;

.field private mLongestLabelIndex:I

.field private mPositionLen:I

.field private mPositionToSection:[I

.field private mSectionLen:I

.field private mSectionToPosition:[I

.field private mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

.field private mTextScaleXs:[F

.field private mTextWidths:[F

.field private mTransEndPos:[F

.field private mTransLabels:[Ljava/lang/String;

.field private mTransLen:I

.field private mTransPhase:F

.field private mTransPosition:[F

.field private mTransSectionIndex:[I

.field private mTransStartPos:[F

.field private mTransTextScaleXs:[F


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 13
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;-><init>()V

    .line 30
    const/4 v10, 0x0

    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLongestLabelIndex:I

    .line 46
    array-length v10, p1

    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    .line 47
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    .line 48
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentLabels:[Ljava/lang/String;

    .line 49
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    .line 50
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([FF)V

    .line 51
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextWidths:[F

    .line 52
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentTextScaleXs:[F

    .line 53
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionToSection:[I

    .line 54
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionToPosition:[I

    .line 56
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransSectionIndex:[I

    .line 57
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLabels:[Ljava/lang/String;

    .line 58
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransStartPos:[F

    .line 59
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransEndPos:[F

    .line 60
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPosition:[F

    .line 61
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransTextScaleXs:[F

    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, "sectIdx":I
    const/4 v8, 0x0

    .line 65
    .local v8, "subSectIdx":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v7, "subSect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v10, p1

    if-ge v0, v10, :cond_8

    .line 70
    aget-object v10, p1, v0

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 71
    if-eqz v8, :cond_0

    .line 72
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    add-int/lit8 v11, v5, -0x1

    iput v11, v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    .line 74
    :cond_0
    aget-object v10, p1, v0

    const-string/jumbo v11, ","

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "param":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v4, v10

    const-string/jumbo v11, "COLLAPSIBLE_INIT_OPEN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 76
    const/4 v9, 0x3

    .line 77
    .local v9, "type":I
    array-length v10, v4

    const/4 v11, 0x2

    if-ge v11, v10, :cond_1

    const/4 v10, 0x2

    aget-object v10, v4, v10

    const-string/jumbo v11, "USE_TAIL_CHAR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 78
    const/4 v9, 0x7

    .line 80
    :cond_1
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    invoke-direct {v10, v5, v9}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v9    # "type":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 93
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "sectIdx":I
    .local v6, "sectIdx":I
    const/4 v11, 0x0

    aget-object v11, v4, v11

    aput-object v11, v10, v5

    move v5, v6

    .line 69
    .end local v4    # "param":[Ljava/lang/String;
    .end local v6    # "sectIdx":I
    .restart local v5    # "sectIdx":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .restart local v4    # "param":[Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    aget-object v10, v4, v10

    const-string/jumbo v11, "COLLAPSIBLE_INIT_CLOSE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 82
    const/4 v9, 0x1

    .line 83
    .restart local v9    # "type":I
    array-length v10, v4

    const/4 v11, 0x2

    if-ge v11, v10, :cond_3

    const/4 v10, 0x2

    aget-object v10, v4, v10

    const-string/jumbo v11, "USE_TAIL_CHAR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 84
    const/4 v9, 0x5

    .line 86
    :cond_3
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    invoke-direct {v10, v5, v9}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v9    # "type":I
    :cond_4
    const/4 v10, 0x1

    aget-object v10, v4, v10

    const-string/jumbo v11, "NO_COLLAPSIBLE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 88
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown subsection type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 95
    .end local v4    # "param":[Ljava/lang/String;
    :cond_6
    if-nez v0, :cond_7

    .line 96
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 99
    :cond_7
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "sectIdx":I
    .restart local v6    # "sectIdx":I
    aget-object v11, p1, v0

    aput-object v11, v10, v5

    move v5, v6

    .end local v6    # "sectIdx":I
    .restart local v5    # "sectIdx":I
    goto :goto_2

    .line 102
    :cond_8
    if-lez v8, :cond_9

    .line 103
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    add-int/lit8 v11, v5, -0x1

    iput v11, v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    .line 105
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    .line 108
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    if-lez v10, :cond_b

    .line 109
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v1, v10, v11

    .line 110
    .local v1, "max":Ljava/lang/String;
    const/4 v0, 0x1

    :goto_3
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_b

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 112
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLongestLabelIndex:I

    .line 113
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v1, v10, v0

    .line 110
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 119
    .end local v1    # "max":Ljava/lang/String;
    :cond_b
    const/4 v2, -0x1

    .line 120
    .local v2, "maxLen":I
    const/4 v3, -0x1

    .line 121
    .local v3, "maxLenIdx":I
    const/4 v0, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v10, v10

    if-ge v0, v10, :cond_d

    .line 122
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    .line 123
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v10

    if-ge v2, v10, :cond_c

    .line 124
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v2

    .line 125
    move v3, v0

    .line 121
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 131
    :cond_d
    const/4 v10, 0x0

    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    .line 132
    const/4 v0, 0x0

    :goto_5
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v10, v10

    if-ge v0, v10, :cond_10

    .line 133
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_f

    .line 134
    if-ne v0, v3, :cond_e

    .line 135
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    .line 132
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 137
    :cond_e
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    goto :goto_6

    .line 140
    :cond_f
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    goto :goto_6

    .line 145
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->updateCurrentSections()V

    .line 45
    return-void
.end method

.method private updateCurrentSections()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 342
    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionLen:I

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 344
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 345
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    .line 344
    if-eqz v6, :cond_0

    .line 346
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionLen:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionLen:I

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionLen:I

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionLen:I

    goto :goto_1

    .line 352
    :cond_1
    const/4 v3, 0x0

    .line 353
    .local v3, "posIdx":I
    const/4 v4, 0x0

    .line 354
    .local v4, "sectIdx":I
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 355
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    .line 356
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    .line 355
    if-eqz v6, :cond_5

    .line 358
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_2

    .line 359
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v2, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    .line 363
    .local v2, "off":I
    :goto_3
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentLabels:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v7, v6, v3

    .line 364
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentTextScaleXs:[F

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    aget v7, v7, v2

    aput v7, v6, v3

    .line 365
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionToSection:[I

    aput v2, v6, v3

    .line 366
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 367
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionToPosition:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sectIdx":I
    .local v5, "sectIdx":I
    aput v3, v6, v4

    .line 366
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    .end local v5    # "sectIdx":I
    .restart local v4    # "sectIdx":I
    goto :goto_4

    .line 361
    .end local v1    # "j":I
    .end local v2    # "off":I
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v2, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    .restart local v2    # "off":I
    goto :goto_3

    .line 369
    .restart local v1    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 354
    .end local v2    # "off":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 371
    .end local v1    # "j":I
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v1, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    .restart local v1    # "j":I
    :goto_5
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    if-gt v1, v6, :cond_4

    .line 372
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentLabels:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v6, v3

    .line 373
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentTextScaleXs:[F

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    aget v7, v7, v1

    aput v7, v6, v3

    .line 374
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionToSection:[I

    aput v1, v6, v3

    .line 375
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionToPosition:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sectIdx":I
    .restart local v5    # "sectIdx":I
    aput v3, v6, v4

    .line 376
    add-int/lit8 v3, v3, 0x1

    .line 371
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    .end local v5    # "sectIdx":I
    .restart local v4    # "sectIdx":I
    goto :goto_5

    .line 339
    .end local v1    # "j":I
    :cond_6
    return-void
.end method


# virtual methods
.method public changeIfNecessary(I)Z
    .locals 11
    .param p1, "sectIdx"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 210
    const/4 v4, -0x1

    .line 211
    .local v4, "openingSubSect":I
    const/4 v0, -0x1

    .line 213
    .local v0, "closingSubSect":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    if-gt v6, p1, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    if-gt p1, v6, :cond_1

    .line 215
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget-boolean v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    if-eqz v6, :cond_0

    .line 216
    move v4, v1

    .line 222
    :cond_0
    if-gez v4, :cond_2

    .line 223
    return v9

    .line 213
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 227
    if-ne v1, v4, :cond_4

    .line 226
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget-boolean v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    if-nez v6, :cond_3

    .line 231
    move v0, v1

    .line 236
    :cond_5
    if-gez v0, :cond_6

    .line 237
    return v9

    .line 245
    :cond_6
    iput v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    .line 246
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v6, v6

    if-ge v1, v6, :cond_9

    .line 247
    if-eq v1, v4, :cond_7

    if-ne v1, v0, :cond_8

    .line 249
    :cond_7
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    .line 246
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    :cond_8
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    .line 251
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    goto :goto_3

    .line 255
    :cond_9
    const/4 v5, 0x0

    .line 256
    .local v5, "transIdx":I
    const/4 v1, 0x0

    :goto_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    array-length v6, v6

    if-ge v1, v6, :cond_d

    .line 257
    if-eq v1, v4, :cond_c

    if-eq v1, v0, :cond_c

    .line 258
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    .line 260
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_b

    .line 261
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v3, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    .line 265
    .local v3, "off":I
    :goto_5
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLabels:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v7, v7, v3

    aput-object v7, v6, v5

    .line 266
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransTextScaleXs:[F

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    aget v7, v7, v3

    aput v7, v6, v5

    .line 267
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransSectionIndex:[I

    aput v3, v6, v5

    .line 268
    add-int/lit8 v5, v5, 0x1

    .line 256
    .end local v3    # "off":I
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 263
    :cond_b
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v3, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    .restart local v3    # "off":I
    goto :goto_5

    .line 270
    .end local v3    # "off":I
    :cond_c
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v2, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    .local v2, "j":I
    :goto_6
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    if-gt v2, v6, :cond_a

    .line 271
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLabels:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v7, v6, v5

    .line 272
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransTextScaleXs:[F

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    aget v7, v7, v2

    aput v7, v6, v5

    .line 273
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransSectionIndex:[I

    aput v2, v6, v5

    .line 274
    add-int/lit8 v5, v5, 0x1

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 279
    .end local v2    # "j":I
    :cond_d
    const/4 v1, 0x0

    :goto_7
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    if-ge v1, v6, :cond_e

    .line 280
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransStartPos:[F

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionToPosition:[I

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransSectionIndex:[I

    aget v8, v8, v1

    aget v7, v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mBoxHeight:F

    mul-float/2addr v7, v8

    aput v7, v6, v1

    .line 281
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPosition:[F

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransStartPos:[F

    aget v7, v7, v1

    aput v7, v6, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 284
    :cond_e
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v0

    iput-boolean v10, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    .line 285
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSubSect:[Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;

    aget-object v6, v6, v4

    iput-boolean v9, v6, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->updateCurrentSections()V

    .line 287
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPhase:F

    .line 289
    return v10
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionLen:I

    return v0
.end method

.method public getCountForFontSizeCalculation()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCountForFontSizeCalculation:I

    return v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLabelCountInTransition()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    return v0
.end method

.method public getLabelInTransition(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLongestLabelIndex()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLongestLabelIndex:I

    return v0
.end method

.method public getLongestLabelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLabels:[Ljava/lang/String;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLongestLabelIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLongestLabelTextWidth()F
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextWidths:[F

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mLongestLabelIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getPositionCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionLen:I

    return v0
.end method

.method public getPositionFromSection(I)I
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionToPosition:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPositionInTransition(I)F
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPosition:[F

    aget v0, v0, p1

    return v0
.end method

.method public getPositionLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "posIdx"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPositionTextScaleXs(I)F
    .locals 1
    .param p1, "posIdx"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mCurrentTextScaleXs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getSectionFromPosition(I)I
    .locals 1
    .param p1, "posIdx"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mPositionToSection:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTextScaleXs(I)F
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getTextScaleXsInTransition(I)F
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransTextScaleXs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getTextWidth(I)F
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextWidths:[F

    aget v0, v0, p1

    return v0
.end method

.method public setBoxHeight(F)V
    .locals 0
    .param p1, "boxHeight"    # F

    .prologue
    .line 307
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mBoxHeight:F

    .line 306
    return-void
.end method

.method public setTextScaleXs(IF)V
    .locals 1
    .param p1, "sectIdx"    # I
    .param p2, "scale"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextScaleXs:[F

    aput p2, v0, p1

    .line 171
    return-void
.end method

.method public setTextWidth(IF)V
    .locals 1
    .param p1, "sectIdx"    # I
    .param p2, "width"    # F

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTextWidths:[F

    aput p2, v0, p1

    .line 302
    return-void
.end method

.method public stateChangePostProcessing()V
    .locals 4

    .prologue
    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransEndPos:[F

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mSectionToPosition:[I

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransSectionIndex:[I

    aget v3, v3, v0

    aget v2, v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mBoxHeight:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public updatePosition()Z
    .locals 6

    .prologue
    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransLen:I

    if-ge v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPosition:[F

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransStartPos:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPhase:F

    mul-float/2addr v2, v3

    .line 329
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransEndPos:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPhase:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    .line 328
    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPhase:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPhase:F

    .line 332
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;->mTransPhase:F

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 333
    const/4 v1, 0x0

    return v1

    .line 335
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
