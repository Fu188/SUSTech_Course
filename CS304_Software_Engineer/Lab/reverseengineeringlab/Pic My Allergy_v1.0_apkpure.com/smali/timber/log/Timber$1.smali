.class final Ltimber/log/Timber$1;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 236
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 238
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 239
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 3

    .line 252
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 254
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 244
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 246
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 247
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 308
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 310
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 3

    .line 324
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 326
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 316
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 318
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 319
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 260
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 262
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 263
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 3

    .line 276
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 278
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 279
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 268
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 270
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 271
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 380
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Missing override for log method."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 356
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 358
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 359
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Throwable;)V
    .locals 3

    .line 372
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 374
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 375
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 364
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 366
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 367
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 212
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 214
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 215
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 3

    .line 228
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 230
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 231
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 220
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 222
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 223
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 284
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 286
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 287
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    .line 300
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 302
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 292
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 294
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 295
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 332
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 334
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 335
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 3

    .line 348
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 350
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 351
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 340
    sget-object p0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 342
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 343
    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
