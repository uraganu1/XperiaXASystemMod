.class synthetic Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$1;
.super Ljava/lang/Object;
.source "DisplayLeakConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->values()[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$1;->$SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I

    :try_start_0
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$1;->$SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$1;->$SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
