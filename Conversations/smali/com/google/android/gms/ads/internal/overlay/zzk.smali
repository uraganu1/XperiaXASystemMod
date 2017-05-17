.class public Lcom/google/android/gms/ads/internal/overlay/zzk;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzEN:Landroid/widget/FrameLayout;

.field private final zzEO:Lcom/google/android/gms/ads/internal/overlay/zzu;

.field private zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzEQ:Z

.field private zzER:Z

.field private zzES:Landroid/widget/TextView;

.field private zzET:J

.field private zzEV:Ljava/lang/String;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;

.field private zzzK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjp;ILcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzpD:Lcom/google/android/gms/internal/zzjp;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzjp;->zzhR()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzv(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzjp;->zzhR()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzd;->zzpx:Lcom/google/android/gms/ads/internal/overlay/zzj;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjp;ILcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzES:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzES:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzfG()V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEO:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEO:Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzfQ()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_2

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "AdVideoUnderlay Error"

    const-string/jumbo v1, "Allocating player failed."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private varargs zza(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "event"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-lt v2, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzpD:Lcom/google/android/gms/internal/zzjp;

    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/zzjp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    aget-object v0, p2, v2

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0
.end method

.method private zzfG()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzfI()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzES:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzES:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private zzfH()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzfI()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzES:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private zzfI()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzES:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzfK()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhP()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEQ:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhP()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEQ:Z

    goto :goto_0
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzjp;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "event"

    const-string/jumbo v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzjp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEO:Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzfK()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->stop()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->pause()V

    return-void

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->play()V

    return-void

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->seekTo(I)V

    return-void

    :cond_0
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEV:Ljava/lang/String;

    return-void
.end method

.method public zza(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(F)V

    return-void

    :cond_0
    return-void
.end method

.method public zzap(Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzzK:Ljava/lang/String;

    return-void
.end method

.method public zzd(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p4, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->requestLayout()V

    return-void
.end method

.method public zzd(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    :cond_0
    return-void
.end method

.method public zzfD()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzzK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "no_src"

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->setMimeType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzzK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzfE()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AdMob - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzeZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEN:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void

    :cond_0
    return-void
.end method

.method zzfF()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzET:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzfH()V

    long-to-float v0, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    const-string/jumbo v3, "timeupdate"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "time"

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-direct {p0, v3, v6}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzET:J

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public zzff()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzff()V

    return-void

    :cond_0
    return-void
.end method

.method public zzfg()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzEP:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzfg()V

    return-void

    :cond_0
    return-void
.end method

.method public zzg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-string/jumbo v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "what"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "extra"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
