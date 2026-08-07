.class public Lz0/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/d;
.implements LA0/a;
.implements Lz0/c;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/N$c;,
        Lz0/N$b;,
        Lz0/N$d;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "SQLiteEventStore"

.field public static final h:I = 0x10

.field public static final i:I = 0x32

.field public static final j:Ll0/c;


# instance fields
.field public final b:Lz0/V;

.field public final c:LB0/a;

.field public final d:LB0/a;

.field public final e:Lz0/e;

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "proto"

    invoke-static {v0}, Ll0/c;->b(Ljava/lang/String;)Ll0/c;

    move-result-object v0

    sput-object v0, Lz0/N;->j:Ll0/c;

    return-void
.end method

.method public constructor <init>(LB0/a;LB0/a;Lz0/e;Lz0/V;Ljavax/inject/Provider;)V
    .locals 0
    .param p1    # LB0/a;
        .annotation build LB0/h;
        .end annotation
    .end param
    .param p2    # LB0/a;
        .annotation build LB0/b;
        .end annotation
    .end param
    .param p5    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "PACKAGE_NAME"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB0/a;",
            "LB0/a;",
            "Lz0/e;",
            "Lz0/V;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lz0/N;->b:Lz0/V;

    iput-object p1, p0, Lz0/N;->c:LB0/a;

    iput-object p2, p0, Lz0/N;->d:LB0/a;

    iput-object p3, p0, Lz0/N;->e:Lz0/e;

    iput-object p5, p0, Lz0/N;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static synthetic A(Lz0/N;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz0/N;->p0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lz0/N;Ljava/util/List;Lp0/r;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz0/N;->K0(Ljava/util/List;Lp0/r;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance v0, Lz0/y;

    invoke-direct {v0}, Lz0/y;-><init>()V

    invoke-static {p0, v0}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic G0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lp0/r;->a()Lp0/r$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp0/r$a;->b(Ljava/lang/String;)Lp0/r$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, LC0/a;->b(I)Ll0/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp0/r$a;->d(Ll0/e;)Lp0/r$a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz0/N;->W0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lp0/r$a;->c([B)Lp0/r$a;

    move-result-object v1

    invoke-virtual {v1}, Lp0/r$a;->a()Lp0/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic L0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Lz0/N$c;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lz0/N$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lz0/N$a;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic N0(Landroid/database/Cursor;)[B
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-array p0, v2, [B

    move v2, v1

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static synthetic P(Lz0/N;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz0/N;->T0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lz0/N;Ljava/lang/String;Ljava/util/Map;Lu0/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lu0/a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lz0/N;->J0(Ljava/lang/String;Ljava/util/Map;Lu0/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lu0/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lz0/N;->v0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Ljava/lang/String;Lu0/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lu0/c$b;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    invoke-virtual {p4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lz0/o;

    invoke-direct {v1}, Lz0/o;-><init>()V

    invoke-static {v0, v1}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "log_source"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lu0/c$b;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "events_dropped_count"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "log_event_dropped"

    invoke-virtual {p4, p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " WHERE log_source = ? AND reason = ?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lu0/c$b;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public static synthetic S(JLandroid/database/sqlite/SQLiteDatabase;)Lu0/f;
    .locals 0

    invoke-static {p0, p1, p2}, Lz0/N;->z0(JLandroid/database/sqlite/SQLiteDatabase;)Lu0/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S0(JLp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "next_request_ms"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lp0/r;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lp0/r;->d()Ll0/e;

    move-result-object p1

    invoke-static {p1}, LC0/a;->a(Ll0/e;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "transport_contexts"

    const-string v1, "backend_name = ? and priority = ?"

    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    const-string p0, "backend_name"

    invoke-virtual {p2}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lp0/r;->d()Ll0/e;

    move-result-object p0

    invoke-static {p0}, LC0/a;->a(Ll0/e;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v2
.end method

.method public static W0(Ljava/lang/String;)[B
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static a1(Ljava/lang/String;)Ll0/c;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lz0/N;->j:Ll0/c;

    return-object p0

    :cond_0
    invoke-static {p0}, Ll0/c;->b(Ljava/lang/String;)Ll0/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(JLandroid/database/Cursor;)Lu0/f;
    .locals 0

    invoke-static {p0, p1, p2}, Lz0/N;->y0(JLandroid/database/Cursor;)Lu0/f;

    move-result-object p0

    return-object p0
.end method

.method public static b1(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lz0/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/k;

    invoke-virtual {v1}, Lz0/k;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lz0/N$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p0}, Lz0/N$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static synthetic f(Lz0/N;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz0/N;->H0(Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lz0/N;->G0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lz0/N;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz0/N;->O0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    invoke-static {p0}, Lz0/N;->u0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lz0/N;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz0/N;->o0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lz0/N;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz0/N;->P0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lz0/N;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz0/N;->D0(Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(JLp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lz0/N;->S0(JLp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/database/Cursor;)[B
    .locals 0

    invoke-static {p0}, Lz0/N;->N0(Landroid/database/Cursor;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lz0/N;->F0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "transport_contexts"

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v3
.end method

.method public static synthetic r(Lz0/N;Ljava/util/Map;Lu0/a$a;Landroid/database/Cursor;)Lu0/a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz0/N;->I0(Ljava/util/Map;Lu0/a$a;Landroid/database/Cursor;)Lu0/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lz0/N;->Q0(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lz0/N;->q0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic u(Lz0/N;Lp0/j;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz0/N;->M0(Lp0/j;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic v(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lz0/N;->s0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lz0/N;->A0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lz0/N;->t0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/String;Lu0/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lz0/N;->R0(Ljava/lang/String;Lu0/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(JLandroid/database/Cursor;)Lu0/f;
    .locals 2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {}, Lu0/f;->d()Lu0/f$a;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lu0/f$a;->c(J)Lu0/f$a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lu0/f$a;->b(J)Lu0/f$a;

    move-result-object p0

    invoke-virtual {p0}, Lu0/f$a;->a()Lu0/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lz0/N;->L0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(JLandroid/database/sqlite/SQLiteDatabase;)Lu0/f;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lz0/D;

    invoke-direct {v0, p0, p1}, Lz0/D;-><init>(J)V

    invoke-static {p2, v0}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu0/f;

    return-object p0
.end method


# virtual methods
.method public B0(Lp0/r;)J
    .locals 2

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lp0/r;->d()Ll0/e;

    move-result-object p1

    invoke-static {p1}, LC0/a;->a(Ll0/e;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Lz0/C;

    invoke-direct {v0}, Lz0/C;-><init>()V

    invoke-static {p1, v0}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic D0(Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0, p2, p1}, Lz0/N;->i0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    invoke-virtual {p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lz0/H;

    invoke-direct {p2}, Lz0/H;-><init>()V

    invoke-static {p1, p2}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public G()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lp0/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz0/A;

    invoke-direct {v0}, Lz0/A;-><init>()V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final synthetic H0(Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lz0/N;->e:Lz0/e;

    invoke-virtual {v0}, Lz0/e;->d()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lz0/N;->U0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;I)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ll0/e;->values()[Ll0/e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1}, Lp0/r;->d()Ll0/e;

    move-result-object v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lz0/N;->e:Lz0/e;

    invoke-virtual {v5}, Lz0/e;->d()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    if-gtz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v4}, Lp0/r;->f(Ll0/e;)Lp0/r;

    move-result-object v4

    invoke-virtual {p0, p2, v4, v5}, Lz0/N;->U0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0, p2, v0}, Lz0/N;->V0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz0/N;->n0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public I(Lp0/r;J)V
    .locals 1

    new-instance v0, Lz0/s;

    invoke-direct {v0, p2, p3, p1}, Lz0/s;-><init>(JLp0/r;)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic I0(Ljava/util/Map;Lu0/a$a;Landroid/database/Cursor;)Lu0/a;
    .locals 5

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lz0/N;->U(I)Lu0/c$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lu0/c;->d()Lu0/c$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lu0/c$a;->c(Lu0/c$b;)Lu0/c$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lu0/c$a;->b(J)Lu0/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lu0/c$a;->a()Lu0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lz0/N;->X0(Lu0/a$a;Ljava/util/Map;)V

    invoke-virtual {p0}, Lz0/N;->h0()Lu0/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu0/a$a;->f(Lu0/f;)Lu0/a$a;

    invoke-virtual {p0}, Lz0/N;->e0()Lu0/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu0/a$a;->d(Lu0/b;)Lu0/a$a;

    iget-object p1, p0, Lz0/N;->f:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lu0/a$a;->c(Ljava/lang/String;)Lu0/a$a;

    invoke-virtual {p2}, Lu0/a$a;->b()Lu0/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic J0(Ljava/lang/String;Ljava/util/Map;Lu0/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lu0/a;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p4, Lz0/r;

    invoke-direct {p4, p0, p2, p3}, Lz0/r;-><init>(Lz0/N;Ljava/util/Map;Lu0/a$a;)V

    invoke-static {p1, p4}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu0/a;

    return-object p1
.end method

.method public final synthetic K0(Ljava/util/List;Lp0/r;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x7

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v0, v4

    :cond_0
    invoke-static {}, Lp0/j;->a()Lp0/j$a;

    move-result-object v3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp0/j$a;->j(Ljava/lang/String;)Lp0/j$a;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lp0/j$a;->i(J)Lp0/j$a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lp0/j$a;->k(J)Lp0/j$a;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Lp0/i;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz0/N;->a1(Ljava/lang/String;)Ll0/c;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lp0/i;-><init>(Ll0/c;[B)V

    invoke-virtual {v3, v0}, Lp0/j$a;->h(Lp0/i;)Lp0/j$a;

    goto :goto_1

    :cond_1
    new-instance v0, Lp0/i;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz0/N;->a1(Ljava/lang/String;)Ll0/c;

    move-result-object v4

    invoke-virtual {p0, v1, v2}, Lz0/N;->Y0(J)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lp0/i;-><init>(Ll0/c;[B)V

    invoke-virtual {v3, v0}, Lp0/j$a;->h(Lp0/i;)Lp0/j$a;

    :goto_1
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lp0/j$a;->g(Ljava/lang/Integer;)Lp0/j$a;

    :cond_2
    invoke-virtual {v3}, Lp0/j$a;->d()Lp0/j;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Lz0/k;->a(JLp0/r;Lp0/j;)Lz0/k;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public M(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lz0/k;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lz0/N;->b1(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lz0/w;

    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    invoke-direct {v0, p0, p1, v1}, Lz0/w;-><init>(Lz0/N;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic M0(Lp0/j;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 11

    invoke-virtual {p0}, Lz0/N;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lu0/c$b;->CACHE_FULL:Lu0/c$b;

    invoke-virtual {p1}, Lp0/j;->l()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1, p2, p1}, Lz0/N;->d(JLu0/c$b;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p3, p2}, Lz0/N;->Z(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;)J

    move-result-wide v0

    iget-object p2, p0, Lz0/N;->e:Lz0/e;

    invoke-virtual {p2}, Lz0/e;->e()I

    move-result p2

    invoke-virtual {p1}, Lp0/j;->e()Lp0/i;

    move-result-object v2

    invoke-virtual {v2}, Lp0/i;->a()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, p2, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "context_id"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "transport_name"

    invoke-virtual {p1}, Lp0/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lp0/j;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lp0/j;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uptime_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lp0/j;->e()Lp0/i;

    move-result-object v0

    invoke-virtual {v0}, Lp0/i;->b()Ll0/c;

    move-result-object v0

    invoke-virtual {v0}, Ll0/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload_encoding"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {p1}, Lp0/j;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "num_attempts"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-array v0, v4, [B

    :goto_1
    const-string v1, "payload"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-string v0, "event_id"

    if-nez v3, :cond_3

    array-length v3, v2

    int-to-double v3, v3

    int-to-double v8, p2

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_2
    if-gt v5, v3, :cond_3

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v4, p2

    mul-int v8, v5, p2

    array-length v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "sequence_num"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "bytes"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "event_payloads"

    invoke-virtual {p3, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lp0/j;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_metadata"

    invoke-virtual {p3, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic O0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Lu0/c$b;->MAX_RETRIES_REACHED:Lu0/c$b;

    invoke-virtual {p0, v2, v3, v0, v1}, Lz0/N;->d(JLu0/c$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic P0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lz0/M;

    invoke-direct {v0, p0}, Lz0/M;-><init>(Lz0/N;)V

    invoke-static {p2, v0}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-object p1
.end method

.method public T()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v0, Lz0/I;

    invoke-direct {v0}, Lz0/I;-><init>()V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic T0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    const-string v0, "DELETE FROM log_event_dropped"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/N;->c:LB0/a;

    invoke-interface {v1}, LB0/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final U(I)Lu0/c$b;
    .locals 3

    sget-object v0, Lu0/c$b;->REASON_UNKNOWN:Lu0/c$b;

    invoke-virtual {v0}, Lu0/c$b;->getNumber()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lu0/c$b;->MESSAGE_TOO_OLD:Lu0/c$b;

    invoke-virtual {v1}, Lu0/c$b;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lu0/c$b;->CACHE_FULL:Lu0/c$b;

    invoke-virtual {v1}, Lu0/c$b;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_2

    return-object v1

    :cond_2
    sget-object v1, Lu0/c$b;->PAYLOAD_TOO_BIG:Lu0/c$b;

    invoke-virtual {v1}, Lu0/c$b;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Lu0/c$b;->MAX_RETRIES_REACHED:Lu0/c$b;

    invoke-virtual {v1}, Lu0/c$b;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_4

    return-object v1

    :cond_4
    sget-object v1, Lu0/c$b;->INVALID_PAYLOD:Lu0/c$b;

    invoke-virtual {v1}, Lu0/c$b;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_5

    return-object v1

    :cond_5
    sget-object v1, Lu0/c$b;->SERVER_ERROR:Lu0/c$b;

    invoke-virtual {v1}, Lu0/c$b;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_6

    return-object v1

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "SQLiteEventStore"

    const-string v2, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {v1, v2, p1}, Lv0/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final U0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lp0/r;",
            "I)",
            "Ljava/util/List<",
            "Lz0/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p2}, Lz0/N;->i0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v8, "code"

    const-string v9, "inline"

    const-string v2, "_id"

    const-string v3, "transport_name"

    const-string v4, "timestamp_ms"

    const-string v5, "uptime_ms"

    const-string v6, "payload_encoding"

    const-string v7, "payload"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const-string v11, "events"

    const-string v13, "context_id = ?"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lz0/m;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct {v2, v3, v0, v4}, Lz0/m;-><init>(Lz0/N;Ljava/util/List;Lp0/r;)V

    invoke-static {v1, v2}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    return-object v0
.end method

.method public final V0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lz0/k;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lz0/N$c;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/k;

    invoke-virtual {v3}, Lz0/k;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "name"

    const-string v2, "value"

    const-string v3, "event_id"

    filled-new-array {v3, p2, v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "event_metadata"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lz0/u;

    invoke-direct {p2, v0}, Lz0/u;-><init>(Ljava/util/Map;)V

    invoke-static {p1, p2}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    return-object v0
.end method

.method public final X(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lz0/F;

    invoke-direct {v0, p1}, Lz0/F;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance p1, Lz0/G;

    invoke-direct {p1}, Lz0/G;-><init>()V

    invoke-virtual {p0, v0, p1}, Lz0/N;->Z0(Lz0/N$d;Lz0/N$b;)Ljava/lang/Object;

    return-void
.end method

.method public final X0(Lu0/a$a;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lu0/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lu0/d;->d()Lu0/d$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lu0/d$a;->d(Ljava/lang/String;)Lu0/d$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lu0/d$a;->c(Ljava/util/List;)Lu0/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lu0/d$a;->b()Lu0/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu0/a$a;->a(Lu0/d;)Lu0/a$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Y(Lp0/r;Lp0/j;)Lz0/k;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lp0/r;->d()Ll0/e;

    move-result-object v0

    invoke-virtual {p2}, Lp0/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    invoke-static {v1, v2, v0}, Lv0/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lz0/p;

    invoke-direct {v0, p0, p2, p1}, Lz0/p;-><init>(Lz0/N;Lp0/j;Lp0/r;)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lz0/k;->a(JLp0/r;Lp0/j;)Lz0/k;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(J)[B
    .locals 8

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "bytes"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "sequence_num"

    const-string v1, "event_payloads"

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lz0/z;

    invoke-direct {p2}, Lz0/z;-><init>()V

    invoke-static {p1, p2}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public final Z(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lz0/N;->i0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backend_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lp0/r;->d()Ll0/e;

    move-result-object v1

    invoke-static {v1}, LC0/a;->a(Ll0/e;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "next_request_ms"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lp0/r;->c()[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lp0/r;->c()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extras"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "transport_contexts"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final Z0(Lz0/N$d;Lz0/N$b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz0/N$d<",
            "TT;>;",
            "Lz0/N$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz0/N;->d:LB0/a;

    invoke-interface {v0}, LB0/a;->getTime()J

    move-result-wide v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lz0/N$d;->produce()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    iget-object v3, p0, Lz0/N;->d:LB0/a;

    invoke-interface {v3}, LB0/a;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lz0/N;->e:Lz0/e;

    invoke-virtual {v5}, Lz0/e;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-interface {p2, v2}, Lz0/N$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public a(LA0/a$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LA0/a$a<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz0/N;->X(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    invoke-interface {p1}, LA0/a$a;->execute()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public b0()J
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lz0/N;->f0()J

    move-result-wide v0

    invoke-virtual {p0}, Lz0/N;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public c()V
    .locals 1

    new-instance v0, Lz0/t;

    invoke-direct {v0, p0}, Lz0/t;-><init>(Lz0/N;)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    return-void
.end method

.method public c0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz0/N;->b:Lz0/V;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lz0/K;

    invoke-direct {v1, v0}, Lz0/K;-><init>(Lz0/V;)V

    new-instance v0, Lz0/L;

    invoke-direct {v0}, Lz0/L;-><init>()V

    invoke-virtual {p0, v1, v0}, Lz0/N;->Z0(Lz0/N$d;Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public cleanUp()I
    .locals 4

    iget-object v0, p0, Lz0/N;->c:LB0/a;

    invoke-interface {v0}, LB0/a;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lz0/N;->e:Lz0/e;

    invoke-virtual {v2}, Lz0/e;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Lz0/v;

    invoke-direct {v2, p0, v0, v1}, Lz0/v;-><init>(Lz0/N;J)V

    invoke-virtual {p0, v2}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lz0/N;->b:Lz0/V;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public d(JLu0/c$b;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lz0/x;

    invoke-direct {v0, p4, p3, p1, p2}, Lz0/x;-><init>(Ljava/lang/String;Lu0/c$b;J)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    return-void
.end method

.method public e()Lu0/a;
    .locals 4

    invoke-static {}, Lu0/a;->h()Lu0/a$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lz0/l;

    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-direct {v2, p0, v3, v1, v0}, Lz0/l;-><init>(Lz0/N;Ljava/lang/String;Ljava/util/Map;Lu0/a$a;)V

    invoke-virtual {p0, v2}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/a;

    return-object v0
.end method

.method public final e0()Lu0/b;
    .locals 4

    invoke-static {}, Lu0/b;->d()Lu0/b$a;

    move-result-object v0

    invoke-static {}, Lu0/e;->d()Lu0/e$a;

    move-result-object v1

    invoke-virtual {p0}, Lz0/N;->b0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lu0/e$a;->b(J)Lu0/e$a;

    move-result-object v1

    sget-object v2, Lz0/e;->f:Lz0/e;

    invoke-virtual {v2}, Lz0/e;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lu0/e$a;->c(J)Lu0/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lu0/e$a;->a()Lu0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu0/b$a;->b(Lu0/e;)Lu0/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lu0/b$a;->a()Lu0/b;

    move-result-object v0

    return-object v0
.end method

.method public final f0()J
    .locals 2

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPageSize()J
    .locals 2

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_size"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h0()Lu0/f;
    .locals 3

    iget-object v0, p0, Lz0/N;->c:LB0/a;

    invoke-interface {v0}, LB0/a;->getTime()J

    move-result-wide v0

    new-instance v2, Lz0/B;

    invoke-direct {v2, v0, v1}, Lz0/B;-><init>(J)V

    invoke-virtual {p0, v2}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/f;

    return-object v0
.end method

.method public final i0(Landroid/database/sqlite/SQLiteDatabase;Lp0/r;)Ljava/lang/Long;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lp0/r;->d()Ll0/e;

    move-result-object v3

    invoke-static {v3}, LC0/a;->a(Ll0/e;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Lp0/r;->c()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lp0/r;->c()[B

    move-result-object p2

    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array p2, v3, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "transport_contexts"

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lz0/n;

    invoke-direct {p2}, Lz0/n;-><init>()V

    invoke-static {p1, p2}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public j0(Lz0/N$b;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz0/N$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, v0}, Lz0/N$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final k0()Z
    .locals 4

    invoke-virtual {p0}, Lz0/N;->f0()J

    move-result-wide v0

    invoke-virtual {p0}, Lz0/N;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lz0/N;->e:Lz0/e;

    invoke-virtual {v2}, Lz0/e;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lz0/k;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lz0/N;->b1(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lz0/N;->c0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public final n0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz0/k;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lz0/N$c;",
            ">;>;)",
            "Ljava/util/List<",
            "Lz0/k;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/k;

    invoke-virtual {v1}, Lz0/k;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lz0/k;->b()Lp0/j;

    move-result-object v2

    invoke-virtual {v2}, Lp0/j;->n()Lp0/j$a;

    move-result-object v2

    invoke-virtual {v1}, Lz0/k;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz0/N$c;

    iget-object v5, v4, Lz0/N$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lz0/N$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lp0/j$a;->c(Ljava/lang/String;Ljava/lang/String;)Lp0/j$a;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lz0/k;->c()J

    move-result-wide v3

    invoke-virtual {v1}, Lz0/k;->d()Lp0/r;

    move-result-object v1

    invoke-virtual {v2}, Lp0/j$a;->d()Lp0/j;

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Lz0/k;->a(JLp0/r;Lp0/j;)Lz0/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final synthetic o0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Lu0/c$b;->MESSAGE_TOO_OLD:Lu0/c$b;

    invoke-virtual {p0, v2, v3, v0, v1}, Lz0/N;->d(JLu0/c$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic p0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lz0/E;

    invoke-direct {v0, p0}, Lz0/E;-><init>(Lz0/N;)V

    invoke-static {p2, v0}, Lz0/N;->c1(Landroid/database/Cursor;Lz0/N$b;)Ljava/lang/Object;

    const-string p2, "events"

    const-string v0, "timestamp_ms < ?"

    invoke-virtual {p3, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public r0(Lp0/r;)Z
    .locals 1

    new-instance v0, Lz0/q;

    invoke-direct {v0, p0, p1}, Lz0/q;-><init>(Lz0/N;Lp0/r;)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public w0(Lp0/r;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp0/r;",
            ")",
            "Ljava/lang/Iterable<",
            "Lz0/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz0/J;

    invoke-direct {v0, p0, p1}, Lz0/J;-><init>(Lz0/N;Lp0/r;)V

    invoke-virtual {p0, v0}, Lz0/N;->j0(Lz0/N$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method
