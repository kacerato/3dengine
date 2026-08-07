.class public final synthetic Lz0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$b;


# instance fields
.field public final synthetic a:Lz0/N;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lu0/a$a;


# direct methods
.method public synthetic constructor <init>(Lz0/N;Ljava/util/Map;Lu0/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/r;->a:Lz0/N;

    iput-object p2, p0, Lz0/r;->b:Ljava/util/Map;

    iput-object p3, p0, Lz0/r;->c:Lu0/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz0/r;->a:Lz0/N;

    iget-object v1, p0, Lz0/r;->b:Ljava/util/Map;

    iget-object v2, p0, Lz0/r;->c:Lu0/a$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lz0/N;->r(Lz0/N;Ljava/util/Map;Lu0/a$a;Landroid/database/Cursor;)Lu0/a;

    move-result-object p1

    return-object p1
.end method
