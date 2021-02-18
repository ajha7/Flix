# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [x] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [x] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF

<img src="http://g.recordit.co/pmVhunS0NR.gif" width=250><br>

### Notes
I struggled for a while with the closure when retrieving the data from the videos end point to show the trailer because I didn't understand why variables I created in it were turning nil, but I was able to resolve the issue and understand why my variables were turning nil inside it.

---

## Flix Part 1

### User Stories
#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [ ] (2pt) User can view the app on various device sizes and orientations.
- [ ] (1pt) Run your app on a real device.

### App Walkthrough GIF

<img src="http://g.recordit.co/e2uO94GXgz.gif" width=250><br>

### Notes
I had an issue with using pod install for CocoaPods but I was able to resolve it by looking at the error and searching for a solution based on that within 30 minutes. 
