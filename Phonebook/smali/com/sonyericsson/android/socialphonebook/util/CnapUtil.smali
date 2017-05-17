.class public Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;
.super Ljava/lang/Object;
.source "CnapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v6, 0x1

    .line 31
    .local v6, "isUpdated":Z
    :try_start_0
    const-string/jumbo v8, "com.sonyericsson.providers.cnap.CnapRecords"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "isUpdatable"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    .line 33
    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 32
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 35
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 48
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "isUpdated":Z
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v6

    .line 44
    .restart local v6    # "isUpdated":Z
    :catch_0
    move-exception v5

    .line 45
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Failed due to Invocation target exception"

    invoke-static {v8, v9, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 42
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Failed due to illegal access exception"

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 41
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Failed due to illegal argument exception"

    invoke-static {v8, v9, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 39
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Could find the isUpdatable method"

    invoke-static {v8, v9, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 36
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Could find the CnapRecords class"

    invoke-static {v8, v9, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static makeCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    const-string/jumbo v7, "com.sonyericsson.providers.cnap.CnapRecords"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "makeUpdatable"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    .line 62
    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 61
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 64
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v5

    .line 74
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed due to Invocation target exception"

    invoke-static {v7, v8, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed due to illegal access exception"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed due to illegal argument exception"

    invoke-static {v7, v8, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could find the isUpdatable method"

    invoke-static {v7, v8, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could find the CnapRecords class"

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
