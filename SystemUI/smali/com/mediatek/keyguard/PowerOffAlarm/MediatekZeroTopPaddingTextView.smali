.class public Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;
.super Landroid/widget/TextView;
.source "MediatekZeroTopPaddingTextView.java"


# static fields
.field private static final SAN_SERIF_BOLD:Landroid/graphics/Typeface;


# instance fields
.field private mPaddingRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "san-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->mPaddingRight:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->setIncludeFontPadding(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->updatePadding()V

    .line 48
    return-void
.end method


# virtual methods
.method public updatePadding()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    const v1, 0x3ea7ef9e    # 0.328f

    .line 56
    .local v1, "paddingRatio":F
    const/high16 v0, 0x3e800000    # 0.25f

    .line 57
    .local v0, "bottomPaddingRatio":F
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const v1, 0x3e54fdf4    # 0.208f

    .line 59
    const v0, 0x3e54fdf4    # 0.208f

    .line 63
    :cond_0
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->mPaddingRight:I

    invoke-virtual {p0, v4, v4, v2, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/MediatekZeroTopPaddingTextView;->setPadding(IIII)V

    .line 54
    return-void
.end method
