.class public final synthetic LY4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:LY4/d;


# direct methods
.method public synthetic constructor <init>(LY4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY4/b;->b:LY4/d;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LY4/b;->b:LY4/d;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, LY4/d;->p1(LY4/d;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
